<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Tastings.aspx.cs" Inherits="HTW_Whisky.Whisky.Tastings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
<h2>Übersicht eigene Tastings</h2>
    <asp:GridView ID="gvOwnTastings" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="userID" HeaderText="userID" 
                SortExpression="userID" />
            <asp:BoundField DataField="whiskyID" HeaderText="whiskyID" 
                SortExpression="whiskyID" />
            <asp:BoundField DataField="notiz" HeaderText="notiz" SortExpression="notiz" />
            <asp:BoundField DataField="art" HeaderText="art" SortExpression="art" />
            <asp:BoundField DataField="geschmack" HeaderText="geschmack" 
                SortExpression="geschmack" />
            <asp:BoundField DataField="suesse" HeaderText="suesse" 
                SortExpression="suesse" />
            <asp:BoundField DataField="frucht" HeaderText="frucht" 
                SortExpression="frucht" />
            <asp:BoundField DataField="abgang" HeaderText="abgang" 
                SortExpression="abgang" />
            <asp:BoundField DataField="gesamt" HeaderText="gesamt" 
                SortExpression="gesamt" />
            <asp:BoundField DataField="qualitaet" HeaderText="qualitaet" 
                SortExpression="qualitaet" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:CheckBoxField DataField="aktiv" HeaderText="aktiv" 
                SortExpression="aktiv" />
        </Columns>
    </asp:GridView>
    <h2>Übersicht Tastings von Freunden</h2>
    <asp:GridView ID="gvFriendsTastings" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="userID" HeaderText="userID" 
                SortExpression="userID" />
            <asp:BoundField DataField="whiskyID" HeaderText="whiskyID" 
                SortExpression="whiskyID" />
            <asp:BoundField DataField="notiz" HeaderText="notiz" SortExpression="notiz" />
            <asp:BoundField DataField="art" HeaderText="art" SortExpression="art" />
            <asp:BoundField DataField="geschmack" HeaderText="geschmack" 
                SortExpression="geschmack" />
            <asp:BoundField DataField="suesse" HeaderText="suesse" 
                SortExpression="suesse" />
            <asp:BoundField DataField="frucht" HeaderText="frucht" 
                SortExpression="frucht" />
            <asp:BoundField DataField="abgang" HeaderText="abgang" 
                SortExpression="abgang" />
            <asp:BoundField DataField="gesamt" HeaderText="gesamt" 
                SortExpression="gesamt" />
            <asp:BoundField DataField="qualitaet" HeaderText="qualitaet" 
                SortExpression="qualitaet" />
            <asp:BoundField DataField="datum" HeaderText="datum" SortExpression="datum" />
            <asp:CheckBoxField DataField="aktiv" HeaderText="aktiv" 
                SortExpression="aktiv" />
        </Columns>
    </asp:GridView>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
