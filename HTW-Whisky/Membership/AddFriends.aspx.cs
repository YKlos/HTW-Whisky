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
            addFriend("yassir");
            //if (checkFriendStatus(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text))
            //{
                //lbtnGoBack.Text = "Wir sind freunde";
            //}
            

        }

        protected bool checkFriendStatus(string userName)
        {
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            DataTable dt = FreundeAdapter.GetFriendsByUserName(userName);

            
            lbtnGoBack.Text = dt.Rows[0]["userID"].ToString();
            return true;
        }
        protected void addFriend(string freundName)
        {
            //1. Checke ob bereits Befreundet
            //....@todo


            //2. UserID und FreundID holen
            aspnet_UsersTableAdapter UserAdapter = new aspnet_UsersTableAdapter();
            int userID = UserAdapter.GetUserIDByUserName(User.Identity.Name).ToString();
            int freundID = UserAdapter.GetUserIDByUserName(freundName).ToString();
            
            //3. Freund in DB eintragen
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            FreundeAdapter.InsertNewFriend(int.Parse(userID), int.Parse(freundID), 0, 0);
        }
    }
}