using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;

namespace HTW_Whisky.Whisky
{
    public partial class MyFavorites : System.Web.UI.Page
    { 
       
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                fillGridViews();
            }
           
        }

        protected void gvMyNonFavWhiskys_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("AddToList") == 0)
            {
                int whiskyID = (int)gvMyNonFavWhiskys.DataKeys[Convert.ToInt32(e.CommandArgument)].Value;
                addFavWhisky(whiskyID);
            }
        }

        protected void gvMyFavWhiskys_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("RemoveFromList") == 0)
            {
                int whiskyID = (int)gvMyFavWhiskys.DataKeys[Convert.ToInt32(e.CommandArgument)].Value;
                removeFavWhisky(whiskyID);
            }
        }

        protected void addFavWhisky(int whiskyID) {
            Guid usersuid = (Guid)System.Web.Security.Membership.GetUser().ProviderUserKey;
            userwhiskyTableAdapter uwTableAdapter = new userwhiskyTableAdapter();
            uwTableAdapter.InsertUserWhiskyCombo(usersuid, whiskyID);
            fillGridViews();
        }

        protected void removeFavWhisky(int whiskyID) {
            Guid usersuid = (Guid)System.Web.Security.Membership.GetUser().ProviderUserKey;
            userwhiskyTableAdapter uwTableAdapter = new userwhiskyTableAdapter();
            uwTableAdapter.DeleteUserWhiskyCombo(usersuid, whiskyID);
            fillGridViews();
        }


        private void fillGridViews()
        {
            whiskyTableAdapter WhiskyAdapter = new whiskyTableAdapter();
            Guid usersuid = (Guid)System.Web.Security.Membership.GetUser().ProviderUserKey;
            gvMyFavWhiskys.DataSource = WhiskyAdapter.GetDataBy1(usersuid);
            gvMyNonFavWhiskys.DataSource = WhiskyAdapter.GetDataNonFavorites(usersuid);
            gvMyFavWhiskys.DataBind();
            gvMyNonFavWhiskys.DataBind();
        }
    }
}