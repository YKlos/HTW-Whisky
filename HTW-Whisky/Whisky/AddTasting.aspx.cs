using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTW_Whisky.Whisky
{
    public partial class AddTasting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            FormView1.ChangeMode(FormViewMode.Insert);
            Guid usersuid = (Guid)System.Web.Security.Membership.GetUser().ProviderUserKey;
            TextBox tbUserID = (TextBox)FormView1.FindControl("userIDTextBox");
            tbUserID.Text = usersuid.ToString();
            String whiskyID = "0";
            if (String.IsNullOrEmpty(Request.QueryString["wid"]))
            {
                lblInfo.Text = "Sie muessen einen Whisky auswählen verdammt!";
                linkWhiskyList.Visible = true;
                FormView1.Visible = false;
            } else {
                whiskyID = Request.QueryString["wid"];  
            }
            TextBox tbWhiskeyID = (TextBox)FormView1.FindControl("whiskyIDTextBox");
            tbWhiskeyID.Text = whiskyID;

            if (Page.IsPostBack)
            {
                FormView1.Visible = false;
                lblInfo.Text = "Vielen Dank fürs Feedback";
                linkMyTastings.Visible = true;
                linkWhiskyList.Visible = true;
            }
        }
    }
}