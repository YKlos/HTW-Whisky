using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace HTW_Whisky.Roles
{
    public partial class ManageRoles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                DisplayRolesInGrid();
        }

        protected void CreateRoleButton_Click(object sender, EventArgs e)
        {
            string newRoleName = RoleName.Text.Trim();
            if (!System.Web.Security.Roles.RoleExists(newRoleName)) 
                // Create the role 
                System.Web.Security.Roles.CreateRole(newRoleName);
                RoleName.Text = string.Empty;
        }

        private void DisplayRolesInGrid()
        {
            RoleList.DataSource = System.Web.Security.Roles.GetAllRoles();
            RoleList.DataBind();
            Label1.Text = "aktualisiert";
        }

        protected void RoleList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label1.Text = "RoleList_RowDeleting";
            Label RoleNameLabel = RoleList.Rows[e.RowIndex].FindControl("RoleNameLabel") as Label;
            // Delete the role 
            System.Web.Security.Roles.DeleteRole(RoleNameLabel.Text);
            // Rebind the data to the RoleList grid
            // DisplayRolesInGrid();
        }

        protected void RoleList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "RoleList_SelectedIndexChanged";
        }
    }
}