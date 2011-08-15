using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;
using System.Data;

namespace HTW_Whisky.Whisky
{
    public partial class ShowWhisky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!System.Web.Security.Roles.IsUserInRole("Administratoren"))
            {
                Label1.Text = "Kein Admin";
                foreach (ImageButton myButton in this.Controls)
                {
                    if (myButton.ID.Equals("imgBtnEdit") || myButton.ID.Equals("imgBtnDelete") || myButton.ID.Equals("imgBtnNew") || myButton.ID.Equals("imgBtnImages"))
                    {
                        fvWhisky.Controls.Remove(myButton);
                    }
                }
            }
        }

        protected void imgBtnImages_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Images.aspx?id=" + Request.QueryString["id"]);
        }
    }
}