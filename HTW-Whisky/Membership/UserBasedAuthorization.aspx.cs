using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace HTW_Whisky.Membership
{
    public partial class UserBasedAuthorization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblPathname.Text = "bla bla bla";
            if (!Page.IsPostBack)
            {
                //string appPath = Request.PhysicalApplicationPath;
                string appPath = "C:\\workspace\\HTW-Whisky\\HTW-Whisky";
                lblPathname.Text = appPath;
                DirectoryInfo dirInfo = new DirectoryInfo(appPath);
                FileInfo[] files = dirInfo.GetFiles();
                FilesGrid.DataSource = files;
                FilesGrid.DataBind();
            }
        }
    }
}