using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;
using System.Web.Security;

namespace HTW_Whisky.Whisky
{
    public partial class Images : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Guid currentUserID = Guid.Parse(System.Web.Security.Membership.GetUser().ProviderUserKey.ToString());
            int whiskyID = int.Parse(Request.QueryString["id"]);

            freundeTableAdapter freundeTable = new freundeTableAdapter();
            pictureTableAdapter pictureTable = new pictureTableAdapter();

            DataTable freePictures = new DataTable();
            DataTable freunde = freundeTable.GetFriendsByUserID(currentUserID);
            DataTable allPictures = pictureTable.GetImagesByWhisky(whiskyID);

            if (freunde.Rows.Count == 0 || allPictures.Rows.Count == 0)
                return;

            // Die veroeffentlichten Bilder der freunde herraussuchen bzw. mit freigabe fuer alle User
            foreach (DataRow picture in allPictures.Rows)
            {
                foreach (DataRow friend in freunde.Rows)
                {
                    if ( (picture["userID"].Equals(friend["freundID"]) && (int.Parse(picture["allowFriends"].ToString()) == 1))
                        || (int.Parse(picture["allowAll"].ToString()) == 1) )
                    {
                        freePictures.Rows.Add(picture);
                    }
                }
            }

            //Falls noch Bilder anzuzeigen sind...
            if (freePictures.Rows.Count == 0)
                return;

            //Image-Buttons erstellen
            foreach (DataRow picture in freePictures.Rows)
            {
                Panel imgPanel = new Panel();
                imgPanel.CssClass = "imgpanel";
                ImageButton imgBtnControl = new ImageButton();
                imgBtnControl.CssClass = "select";
                imgBtnControl.ImageUrl = "ImageHandler.ashx?imgid=" + picture["id"];
                imgBtnControl.ImageAlign = ImageAlign.Middle;
                imgBtnControl.ID = picture["id"].ToString();
                imgBtnControl.Click += new ImageClickEventHandler(selectImage_Click);
                imgPanel.Controls.Add(imgBtnControl);
                
                panImages.Controls.Add(imgPanel);
            }
        }

        protected void selectImage_Click(object sender, ImageClickEventArgs e)
        {
            MembershipUser currentUser = System.Web.Security.Membership.GetUser();
            ImageButton imgBtnControl = sender as ImageButton;
            userwhiskyTableAdapter userWhiskyTable = new userwhiskyTableAdapter();
            userWhiskyTable.UpdatePicture(int.Parse(imgBtnControl.ID.ToString()), Guid.Parse(currentUser.ProviderUserKey.ToString()), int.Parse(Request.QueryString["id"].ToString()));
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            pictureTableAdapter pictureTable = new pictureTableAdapter();
            MembershipUser currentUser = System.Web.Security.Membership.GetUser();
            if (fuImageUpload.PostedFile != null &&
                fuImageUpload.FileName != "")
            {
                HttpPostedFile imageFile = fuImageUpload.PostedFile;
                byte[] imageData = new byte[imageFile.ContentLength];
                imageFile.InputStream.Read(imageData, 0, imageFile.ContentLength);
                pictureTable.Insert(
                    Guid.Parse(currentUser.ProviderUserKey.ToString()),
                    int.Parse(this.Request.QueryString["id"]),
                    radioFriendsOnly.Checked,
                    radioAllowAll.Checked,
                    imageData,
                    imageFile.ContentType);
            }
        }

    }
}