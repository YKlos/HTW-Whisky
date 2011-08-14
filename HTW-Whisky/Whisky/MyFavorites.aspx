<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="MyFavorites.aspx.cs" Inherits="HTW_Whisky.Whisky.MyFavorites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <h2>Meine Favoriten</h2>
    <asp:GridView ID="gvMyFavWhiskys" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" OnRowCommand="gvMyFavWhiskys_RowCommand" Width="500px">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="typName" HeaderText="typName" 
                SortExpression="typName" />
            <asp:ButtonField Text="DEL" CommandName="RemoveFromList" />
        </Columns>
    </asp:GridView>
    <h2>Restliche Whiskys</h2>
    <asp:GridView ID="gvMyNonFavWhiskys" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" OnRowCommand="gvMyNonFavWhiskys_RowCommand" 
        Width="500px">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="typName" HeaderText="typName" SortExpression="typName" />
            <asp:ButtonField Text="ADD" CommandName="AddToList" />
        </Columns>
    </asp:GridView>
    <!-- <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy1" 
        TypeName="WhiskyAppDatasetTableAdapters.whiskyTableAdapter">
        <SelectParameters>
            <asp:Parameter DbType="Guid" Name="UserID" />
        </SelectParameters>
    </asp:ObjectDataSource>   --> 
    <asp:Label ID="lbl_info" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
