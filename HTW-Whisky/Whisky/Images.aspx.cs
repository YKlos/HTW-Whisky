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
        

        public DataTable FetchAllImages()
        {
            pictureTableAdapter pictureTable = new pictureTableAdapter();
            return pictureTable.GetImagesByWhisky(int.Parse(Request.QueryString["id"]));
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            gvFreeImages.DataSource = FetchAllImages();
            gvFreeImages.DataBind();
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