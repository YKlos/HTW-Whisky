using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTW_Whisky.Membership
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.IsAuthenticated && !string.IsNullOrEmpty(Request.QueryString["ReturnUrl"]))
                    // This is an unauthorized, authenticated request... 
                    Response.Redirect("~/UnauthorizedAccess.aspx");
            }

        }
    }
}