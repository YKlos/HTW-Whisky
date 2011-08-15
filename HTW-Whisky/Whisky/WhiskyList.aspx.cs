using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTW_Whisky.Whisky
{
    public partial class WhiskyList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.IsAuthenticated)
                actionNew.Visible = false;
        }

        protected void imgBtnNew_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Whisky.aspx?action=new&ref=" + Request.UrlReferrer.AbsolutePath);
        }
    }
}