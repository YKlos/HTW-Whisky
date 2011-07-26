<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowUsers.aspx.cs" Inherits="HTW_Whisky.Membership.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="697px">
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        SelectCommand="SELECT [UserName] FROM [vw_aspnet_Users]">
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
