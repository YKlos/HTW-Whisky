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
        int currentView = 1;
        int selectedAction = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //UserID in die Session schreiben, damit das GridView auslesen kann
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
            DataTable dt = FreundeAdapter.CheckFriendStatusByID((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(freundName).ProviderUserKey);

            switch (currentView)
            {
                case 1: //Ansicht aller Users
                    /*if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["aktiv"].Equals(false))
                        {
                            btnAddFriend.Enabled = false;
                            btnAddFriend.Text = "Freundschaftsanfrage beantworten";

                        }
                        else
                        {
                            btnAddFriend.Enabled = false;
                            btnAddFriend.Text = "Freundschaft beenden";
                        }
                        if (dt.Rows[0]["blockiert"].Equals(true))
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
                }*/
                    break;
                case 2: //Übersicht über Freunde
                    btnAddFriend.Text = "Freundschaft beenden";
                    selectedAction = 9;
                    break;
                case 3: //Prüfen ob du die Freundschaftsanfrage gesendet hast, oder ob du eine Bekommen hast
                    if (dt.Rows[0]["aktiv"].Equals(System.Web.Security.Membership.GetUser().ProviderUserKey.ToString()))
                    {
                        btnAddFriend.Text = "Freundschaftsanfrage zurück ziehen";
                        selectedAction = 10;
                    }
                    else
                    {
                        btnAddFriend.Text = "Freundschaftsanfrage beantworten";
                        selectedAction = 11;
                    }
                    break;
                case 4:
                    btnAddFriend.Text = "Blockierung aufheben";
                    selectedAction = 11;
                    break;
                default:
                    break;
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
                    GridView1.SelectedIndex = -1;
                    btnAddFriend.Visible = false;
                    currentView = 0;
                    break;
                case 1:
                    GridView1.DataSourceID = "SqlDataSource2";
                    GridView1.SelectedIndex = -1;
                    btnAddFriend.Visible = false;
                    currentView = 1;
                    break;
                case 2:
                    GridView1.DataSourceID = "SqlDataSource3";
                    GridView1.SelectedIndex = -1;
                    btnAddFriend.Visible = false;
                    currentView = 2;
                    break;
                case 3:
                    GridView1.DataSourceID = "SqlDataSource4";
                    GridView1.SelectedIndex = -1;
                    btnAddFriend.Visible = false;
                    currentView = 3;
                    break;
            }
        }

        protected void viewUsers(object sender, EventArgs e)
        {
            currentView = 1;
            GridView1.DataSourceID = "SqlDataSource1";
            GridView1.SelectedIndex = -1;
            btnAddFriend.Visible = false;
            btnAddFriend.Text = "Freundschaftsanfrage versenden";
        }

        protected void viewFriends(object sender, EventArgs e)
        {
            currentView =  2;
            GridView1.DataSourceID = "SqlDataSource2";
            GridView1.SelectedIndex = -1;
            btnAddFriend.Visible = false;
            btnAddFriend.Text = "Freundschaftsanfrage versenden";
        }
    }
}