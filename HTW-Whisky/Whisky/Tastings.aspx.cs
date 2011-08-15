using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;


namespace HTW_Whisky.Whisky
{
    public partial class Tastings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fillGridViews();
            }
        }

        private void fillGridViews()
        {
            tastingTableAdapter TastingAdapter = new tastingTableAdapter();
            Guid usersuid = (Guid)System.Web.Security.Membership.GetUser().ProviderUserKey;
            gvOwnTastings.DataSource = TastingAdapter.GetOwnTastings(usersuid);
            gvFriendsTastings.DataSource = TastingAdapter.GetFriendsTastings(usersuid);
            gvOwnTastings.DataBind();
            gvFriendsTastings.DataBind();
        }

        protected void gvOwnTastings_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("ShowTasting") == 0)
            {
                int tastingID = (int)gvOwnTastings.DataKeys[Convert.ToInt32(e.CommandArgument)].Value;
                Response.Redirect("~/Whisky/Tasting.aspx?tid=" + tastingID.ToString());
            }


        }
        protected void gvFriendsTastings_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("ShowTasting") == 0)
            {
                int tastingID = (int)gvFriendsTastings.DataKeys[Convert.ToInt32(e.CommandArgument)].Value;
                Response.Redirect("~/Whisky/Tasting.aspx?tid=" + tastingID.ToString());
            }

        }
    }
}