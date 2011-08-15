<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Tastings.aspx.cs" Inherits="HTW_Whisky.Whisky.Tastings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
<h2>Übersicht eigene Tastings</h2>
    <asp:GridView ID="gvOwnTastings" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" OnRowCommand="gvOwnTastings_RowCommand">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="Whisky" SortExpression="name" />
            <asp:BoundField DataField="UserName" HeaderText="Benutzer" SortExpression="UserName" />
            <asp:BoundField DataField="notiz" HeaderText="Notiz" SortExpression="notiz" />
            <asp:ButtonField Text="zum Tasting" CommandName="ShowTasting" ButtonType="Link" />
        </Columns>
    </asp:GridView>
    <h2>Übersicht Tastings von Freunden</h2>
    <asp:GridView ID="gvFriendsTastings" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" OnRowCommand="gvFriendsTastings_RowCommand">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="Whisky" SortExpression="name" />
            <asp:BoundField DataField="UserName" HeaderText="Benutzer" SortExpression="UserName" />
            <asp:BoundField DataField="notiz" HeaderText="Notiz" SortExpression="notiz" />
            <asp:ButtonField Text="zum Tasting" CommandName="ShowTasting" ButtonType="Link" />
        </Columns>
    </asp:GridView>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
    <asp:Label ID="lblInfo" runat="server" Text=""></asp:Label>
</asp:Content>
