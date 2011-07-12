using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters;

namespace HTW_Whisky
{
    public partial class AddType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddType_Click(object sender, EventArgs e)
        {
            typenTableAdapter TypeAdapter = new typenTableAdapter();
            TypeAdapter.Insert(tbxTypeName.Text);
        }
    }
}