﻿using System;
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
        private pictureTableAdapter pictureTable = new pictureTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dtPictures = new DataTable();
            dtPictures = pictureTable.GetImagesByWhisky(int.Parse(this.Request.QueryString["id"]));

            if (dtPictures.Rows.Count > 0)
            {
                foreach (DataRow dRow in dtPictures.Rows)
                {
                    Image imgControl = new Image();
                  //  imgControl.DataBind(dRow["image"]);
                }
            }
        }

        protected void btnUploadImage_Click(object sender, EventArgs e)
        {
            MembershipUser currentUser = System.Web.Security.Membership.GetUser();
            if (fuImageUpload.PostedFile != null &&
                fuImageUpload.FileName != "")
            {
                HttpPostedFile imageFile = fuImageUpload.PostedFile;
                byte[] imageData = new byte[imageFile.ContentLength];
                imageFile.InputStream.Read(imageData, 0, imageFile.ContentLength);

                if (pictureTable == null)
                {
                    lblLabelAllowAll.Text = "NULL!";
                }
                else
                {
                    pictureTable.Insert(
                        Guid.Parse(currentUser.ProviderUserKey.ToString()),
                        int.Parse(this.Request.QueryString["id"]),
                        radioFriendsOnly.Checked,
                        radioAllowAll.Checked,
                        imageData,
                        imageFile.ContentType,
                        imageFile.FileName);
                }
            }
        }
    }
}