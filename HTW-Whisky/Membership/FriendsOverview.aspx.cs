using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;

namespace HTW_Whisky.Membership
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 1;

            freundeTableAdapter FreundeAdapter = new freundeTableAdapter();
            //FreundeAdapter.Insert(tbxWhiskyName.Text, tbxAroma.Text);
            lblNumberFriends.Text = "Käsekuchen";
            lblNumberBlocks.Text = "HansWurst";
            lblNumberBlocks.Text = User.Identity.Name;
        }

    }
}