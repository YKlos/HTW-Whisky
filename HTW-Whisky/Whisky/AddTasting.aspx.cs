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
            tastingTableAdapter TastingAdapter = new tastingTableAdapter();
            //TastingAdapter.Insert();
        }
    }
}