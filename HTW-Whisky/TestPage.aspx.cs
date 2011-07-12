using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;

namespace HTW_Whisky
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddWhisky_Click(object sender, EventArgs e)
        {
            whiskyTableAdapter WhiskyAdapter = new whiskyTableAdapter();
            WhiskyAdapter.Insert(tbxWhiskyName.Text, tbxAroma.Text, tbxGeschmack.Text, tbxAbgang.Text, tbxFasstyp.Text, tbxBeschreibung.Text, int.Parse(tbxJahrgang.Text), double.Parse(tbxAlkoholgehalt.Text), double.Parse(tbxLiter.Text), ddlTyp.SelectedIndex, cbxAktiv.Checked);
            lblWhiskyAdded.Text = "Whiskey hinzugefügt";
        }
    }
}