using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;

namespace HTW_Whisky
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            aspnet_UsersTableAdapter UserAdapter = new aspnet_UsersTableAdapter();
            whiskyTableAdapter WhiskyAdapter = new whiskyTableAdapter();

            lbtnMitglieder.Text = UserAdapter.GetData().Count +" Mitglieder";
            lbtnWhisky.Text = WhiskyAdapter.GetData().Count + " Whiskys";
        }
    }
}