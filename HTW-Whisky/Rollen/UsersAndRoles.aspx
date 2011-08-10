<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="UsersAndRoles.aspx.cs" Inherits="HTW_Whisky.Roles.UserAndRoles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
<h3>Manage Roles By User</h3> 
    <asp:Label ID="ActionStatus" runat="server" Text="Label"></asp:Label>
<p class="clearfix">
    <b>Select a User:</b>
    <asp:DropDownList ID="UserList" runat="server" AutoPostBack="True"
    DataTextField="UserName" DataValueField="UserName">
</asp:DropDownList>
</p> 
<p class="clearfix">
    <asp:Repeater ID="UsersRoleList" runat="server">
        <ItemTemplate>
            <asp:CheckBox runat="server" ID="RoleCheckBox" AutoPostBack="true" 
            Text="<%# Container.DataItem %>"
            OnCheckedChanged="RoleCheckBox_CheckChanged" />
            <br />
        </ItemTemplate>
    </asp:Repeater>
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
