using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;
using System.Data;

namespace HTW_Whisky.App_Code
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            pictureTableAdapter pictureAdapter = new pictureTableAdapter();
            DataTable dtPictures = new DataTable();
            dtPictures = pictureAdapter.GetImageByID(int.Parse(context.Request.QueryString["imgid"]));

            context.Response.ContentType = dtPictures.Rows[0]["contentType"].ToString();
            context.Response.BinaryWrite((byte[])(dtPictures.Rows[0]["image"]));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}