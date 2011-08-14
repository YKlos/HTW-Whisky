using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;
using System.Data;

namespace HTW_Whisky.Membership
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["userID"] = System.Web.Security.Membership.GetUser().ProviderUserKey;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnAddFriend.Visible = true;
            checkFriendStatus(User.Identity.Name, GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString());
        }
        
        protected void checkFriendStatus(string userName, string freundName)
        {
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            DataTable dt = FreundeAdapter.CheckFriendStatusByUserID((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(freundName).ProviderUserKey);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["aktiv"].Equals(false))
                {
                    btnAddFriend.Enabled = false;
                    btnAddFriend.Text = "Es wurde bereits eine Freundschaftsanfrage verschickt";

                }
                else
                {
                    btnAddFriend.Enabled = false;
                    btnAddFriend.Text = "Sie sind bereits befreundet";
                }
            }
            else
            {
                btnAddFriend.Enabled = true;
                btnAddFriend.Text = "Als Freund hinzufügen";
            }
        }

        protected void btnAddFriend_Click(object sender, EventArgs e)
        {
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            FreundeAdapter.InsertNewFriend((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey, false, false);
            btnAddFriend.Enabled = false;
            btnAddFriend.Text = "Freundschaftsanfrage wurde versendet";
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (rbtnlFilter.SelectedIndex)
            {

                case 0:
                    GridView1.DataSourceID = "SqlDataSource1";
                    break;
                case 1:
                    GridView1.DataSourceID = "SqlDataSource2";
                    break;
                case 2:
                    GridView1.DataSourceID = "SqlDataSource3";
                    break;
                case 3:
                    GridView1.DataSourceID = "SqlDataSource4";
                    break;
            }
            
        }
    }
}