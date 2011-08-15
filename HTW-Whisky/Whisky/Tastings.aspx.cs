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

        protected void TastingsGv_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}