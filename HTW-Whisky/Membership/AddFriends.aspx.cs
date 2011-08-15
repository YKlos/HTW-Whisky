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

        protected void Page_Load(object sender, EventArgs e)
        {
            //UserID in die Session schreiben, damit das GridView auslesen kann
            Session["userID"] = System.Web.Security.Membership.GetUser().ProviderUserKey;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnDoAction.Enabled = true;
            btnBlock.Enabled = true;
            checkFriendStatus(User.Identity.Name, GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString());
        }

        protected void checkFriendStatus(string userName, string freundName)
        {
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            DataTable dt = FreundeAdapter.CheckFriendStatusByID((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(freundName).ProviderUserKey);

            btnDoAction.Visible = true;
            btnBlock.Visible = true;

            switch (currentView)
            {
                case 1: //Übersicht aller Users
                    if (dt.Rows.Count > 0)
                    {
                        if (dt.Rows[0]["aktiv"].Equals(false) && dt.Rows[0]["blockiert"].Equals(false))
                        {
                            if (dt.Rows[0]["userID"].Equals(System.Web.Security.Membership.GetUser().ProviderUserKey))
                            {
                                btnDoAction.Text = "Freundschaftsanfrage zurück ziehen";
                                Session["action"] = 1;
                            }
                            else
                            {
                                btnDoAction.Text = "Freundschaftsanfrage bestätigen";
                                Session["action"] = 2;
                            }
                        }
                        if (dt.Rows[0]["aktiv"].Equals(true) && dt.Rows[0]["blockiert"].Equals(false))
                        {
                            btnDoAction.Text = "Freundschaft beenden";
                            Session["action"] = 3;
                        }
                        if (dt.Rows[0]["aktiv"].Equals(false) && dt.Rows[0]["blockiert"].Equals(true))
                        {
                            btnBlock.Visible = false;
                            btnDoAction.Text = "Blockierung aufheben";
                            Session["action"] = 4;
                        }
                    }
                    else
                    {
                        btnDoAction.Text = "Freundschaftsanfrage senden";
                        Session["action"] = 5;
                    }
                    break;
                case 2: //Übersicht über Freunde
                    btnDoAction.Text = "Freundschaft beenden";
                    Session["action"] = 3;
                    break;
                case 3: //Eingehende Freundschaftsanfragen
                    //Prüfen ob du die Freundschaftsanfrage gesendet hast, oder ob du eine Bekommen hast
                    if (dt.Rows[0]["freundID"].Equals(System.Web.Security.Membership.GetUser().ProviderUserKey.ToString()))
                    {
                        btnDoAction.Text = "Freundschaftsanfrage bestätigen";
                        Session["action"] = 2;
                    }
                    break;
                case 4:
                    //Prüfen ob du die Freundschaftsanfrage gesendet hast, oder ob du eine Bekommen hast
                    if (dt.Rows[0]["userID"].Equals(System.Web.Security.Membership.GetUser().ProviderUserKey.ToString()))
                    {
                        btnDoAction.Text = "Freundschaftsanfrage zurück ziehen";
                        Session["action"] = 1;
                    }
                    break;
                case 5: //Übersicht blockierter Nutzer
                    btnBlock.Visible = false;
                    btnDoAction.Text = "Blockierung aufheben";
                    Session["action"] = 4;
                    break;
            }
        }

        protected void btnDoAction_Click(object sender, EventArgs e)
        {
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            switch (Session["action"].ToString())
            {
                case "1": //Freundschaftsanfrage zurück ziehen
                    FreundeAdapter.FreundschaftsanfrageZurueckziehen((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
                    btnDoAction.Text = "Freundschaftsanfrage wurde zurück gezogen";
                    btnDoAction.Enabled = false;
                    break;
                case "2": //Freundschaftsanfrage bestätigen
                    FreundeAdapter.FreundschaftsanfrageSenden((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
                    FreundeAdapter.FreundschaftsanfrageBestaetigen((Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser().ProviderUserKey);
                    btnDoAction.Text = "Sie sind nun befreundet!";
                    btnDoAction.Enabled = false;
                    break;
                case "3": //Freundschaft beenden
                    FreundeAdapter.FreundschaftBeenden((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
                    btnDoAction.Text = "Freundschaft wurde beendet";
                    btnDoAction.Enabled = false;
                    break;
                case "4": //Blockierung aufheben
                    FreundeAdapter.BlockierungAufheben((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
                    btnDoAction.Text = "Die blockierung wurde aufgehoben";
                    btnDoAction.Enabled = false;
                    break;
                case "5": //Freundschaftsanfrage senden
                    FreundeAdapter.FreundschaftsanfrageSenden((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
                    btnDoAction.Text = "Freundschaftsanfrage wurde versendet";
                    btnDoAction.Enabled = false;
                    break;
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnDoAction.Visible = false;
            btnBlock.Visible = false;
            GridView1.SelectedIndex = -1;

            switch (rbtnlFilter.SelectedIndex)
            {
                case 0: //Alle Users
                    GridView1.DataSourceID = "SqlDataSource1";
                    currentView = 1;
                    break;
                case 1: //Nur Freunde
                    GridView1.DataSourceID = "SqlDataSource2";
                    currentView = 2;
                    break;
                case 2: //Eingehende Freundschaftsanfragen
                    GridView1.DataSourceID = "SqlDataSource3";
                    currentView = 3;
                    break;
                case 3: //Ausgehende Freundschaftsanfragen
                    GridView1.DataSourceID = "SqlDataSource4";
                    currentView = 4;
                    break;
                case 4: //Blockier Liste
                    GridView1.DataSourceID = "SqlDataSource5";
                    currentView = 5;
                    break;
            }
        }

        protected void btnBlock_Click(object sender, EventArgs e)
        {
            //UserBlockieren
            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();

            //Erst Freundschaft beenden falls eine besteht
            FreundeAdapter.FreundschaftBeenden((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
            
            //Nun blockierung setzen
            FreundeAdapter.UserBlockieren((Guid)System.Web.Security.Membership.GetUser().ProviderUserKey, (Guid)System.Web.Security.Membership.GetUser(GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text.ToString()).ProviderUserKey);
            btnDoAction.Visible = false;
            btnBlock.Text = "Benutzer wird nun geblockt";
            btnBlock.Enabled = false;
        }
    }
}