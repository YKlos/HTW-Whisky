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
                lblName.Text = ResultSet.Rows[0]["name"].ToString();
                lblAroma.Text = ResultSet.Rows[0]["aroma"].ToString();
                lblGeschmack.Text = ResultSet.Rows[0]["geschmack"].ToString();
                lblFassTyp.Text = ResultSet.Rows[0]["fasstyp"].ToString();
            }
        }
    }
}