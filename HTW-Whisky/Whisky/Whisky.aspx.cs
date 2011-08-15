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
            Guid currentUserID = Guid.Parse(System.Web.Security.Membership.GetUser().ProviderUserKey.ToString());
            if (!String.IsNullOrEmpty(Request.QueryString["action"]) && Request.QueryString["action"].Equals("new"))
                fvWhisky.ChangeMode(FormViewMode.Insert);

            if (fvWhisky.CurrentMode == FormViewMode.ReadOnly)
            {
                if (!Request.IsAuthenticated)
                {
                    fvWhisky.FindControl("imgBtnEdit").Visible = false;
                    fvWhisky.FindControl("imgBtnDelete").Visible = false;
                    fvWhisky.FindControl("imgBtnNew").Visible = false;
                    fvWhisky.FindControl("imgBtnImages").Visible = false;
                    fvWhisky.FindControl("imgBtnAddTasting").Visible = false;
                }

                if (!System.Web.Security.Roles.IsUserInRole("Administratoren"))
                {
                    pictureTableAdapter pictureTable = new pictureTableAdapter();
                    DataTable pictures = pictureTable.GetImageForWhisky(currentUserID,int.Parse(Request.QueryString["id"]));

                    if (pictures.Rows.Count == 1)
                    {
                        imgWhisky.ImageUrl = "ImageHandler.ashx?imgid=" + pictures.Rows[0]["id"];
                    }

                    fvWhisky.FindControl("imgBtnEdit").Visible = false;
                    fvWhisky.FindControl("imgBtnDelete").Visible = false;
                    fvWhisky.FindControl("rowAktiv").Visible = false;
                }
            }
        }

        protected void imgBtnImages_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Images.aspx?id=" + Request.QueryString["id"]);
        }

        protected void imgBtnInsertCancel_Click(object sender, ImageClickEventArgs e)
        {
            if (!String.IsNullOrEmpty(Request.QueryString["ref"]))
                Response.Redirect(Request.QueryString["ref"]);
            else
            {
                ImageButton myButton = sender as ImageButton;
                myButton.CommandName = "Cancel";
            }
        }

        protected void imgButtonAddTasting_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Tasting.aspx?wid=" + Request.QueryString["id"] + "&action=new");
        }
    }
}