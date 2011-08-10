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
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (checkFriendStatus(User.Identity.Name, GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()))
            {
                btnAddFriend.Visible = true;
                btnAddFriend.Enabled = false;
                btnAddFriend.Text = "Sie sind bereits befreundet";
            }
            else
            {
                btnAddFriend.Visible = true;
                btnAddFriend.Enabled = true;
                btnAddFriend.Text = "Als Freund hinzufügen";
            }
        }
        
        protected bool checkFriendStatus(string userName, string freundName)
        {
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            DataTable dt = FreundeAdapter.GetFriendsByUserName(userName);

            aspnet_UsersTableAdapter UserAdapter = new aspnet_UsersTableAdapter();
            Guid freundID = (Guid)UserAdapter.GetUserIDByUserName(freundName);

            for (int i = 0; i < dt.Rows.Count;) {
                if (dt.Rows[i]["userID"].ToString().Equals(freundID))
                {
                    return true;
                }
            }
            return false;
        }

        protected void btnAddFriend_Click(object sender, EventArgs e)
        {
            //1. Erneut checken ob bereits befreundet
            string freundName =  GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString();
            if (checkFriendStatus(User.Identity.Name, freundName))
            {
                btnAddFriend.Text = "Sie sind bereits befreundet!";
            }
            else
            {
                //2. UserID und FreundID holen
                aspnet_UsersTableAdapter UserAdapter = new aspnet_UsersTableAdapter();
                Guid userID = (Guid)UserAdapter.GetUserIDByUserName(User.Identity.Name);
                Guid freundID = (Guid)UserAdapter.GetUserIDByUserName(freundName);

                //3. Freund in DB eintragen
                freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
                FreundeAdapter.InsertNewFriend(userID, freundID, false, false);
            }
        }
    }
}