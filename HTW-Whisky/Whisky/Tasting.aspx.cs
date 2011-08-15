using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;

namespace HTW_Whisky.Whisky
{
    public partial class AddTasting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (!String.IsNullOrEmpty(Request.QueryString["action"]) && Request.QueryString["action"] == "new")
            {
                fvTasting.ChangeMode(FormViewMode.Insert);
            }

            if (fvTasting.CurrentMode == FormViewMode.Insert)
            {
                String currentUserID = System.Web.Security.Membership.GetUser().ProviderUserKey.ToString();

                HiddenField userIDField = fvTasting.FindControl("hiddenUserID") as HiddenField;
                HiddenField whiskyIDField = fvTasting.FindControl("hiddenWhiskyID") as HiddenField;

                userIDField.Value = currentUserID;

                if (String.IsNullOrEmpty(Request.QueryString["wid"]))
                {
                    lblInfo.Text = "Sie müssen einen Whisky auswählen verdammt!";
                    linkWhiskyList.Visible = true;
                    fvTasting.Visible = false;
                }
                else
                {
                    whiskyIDField.Value = Request.QueryString["wid"].ToString();
                }

                //Moeglicherweise in den ReadOnly packen!
                if (Page.IsPostBack)
                {
                    fvTasting.Visible = false;
                    lblInfo.Text = "Vielen Dank fürs Feedback";
                    linkMyTastings.Visible = true;
                    linkWhiskyList.Visible = true;
                }
            }
        }
    }
}