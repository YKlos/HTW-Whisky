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
            pictureTableAdapter pictureTable = new pictureTableAdapter();
            MembershipUser currentUser = System.Web.Security.Membership.GetUser();
            int whiskyID = int.Parse(Request.QueryString["id"]);
            //DataTable pictures = pictureTable.GetImagesByFreeForUser(Guid.Parse(currentUser.ProviderUserKey.ToString()), whiskyID);
            DataTable pictures = pictureTable.GetImagesByWhisky(int.Parse(Request.QueryString["id"]));

            foreach (DataRow picture in pictures.Rows)
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
            ImageButton imgBtnControl = sender as ImageButton;
            ClientScript.RegisterClientScriptBlock(this.GetType(), "img", "<script type = 'text/javascript'>alert('ImageButton Clicked:" + imgBtnControl.ID.ToString() + "; " + Request.QueryString["id"] + "');</script>");
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