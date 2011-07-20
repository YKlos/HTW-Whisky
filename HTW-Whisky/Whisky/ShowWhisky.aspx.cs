using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;
using System.Data;

namespace HTW_Whisky.Whisky
{
    public partial class ShowWhisky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            whiskyTableAdapter WhiskyAdapter = new whiskyTableAdapter();
            DataTable ResultSet = WhiskyAdapter.GetDataByID(2);
            if (ResultSet.Rows.Count > 0)
            {
                lblTest.Text = ResultSet.Rows[0]["ID"].ToString();
            }
        }
    }
}