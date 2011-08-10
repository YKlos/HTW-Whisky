<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="FriendsOverview.aspx.cs" Inherits="HTW_Whisky.Membership.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Du hast"></asp:Label>
    &nbsp;<asp:Label ID="lblNumberFriends" runat="server"></asp:Label>
    &nbsp;<asp:Label ID="Label2" runat="server" Text=" Freunde"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="lbtnAddFriends" runat="server" 
        PostBackUrl="~/Membership/AddFriends.aspx">Freunde hinzufügen</asp:LinkButton>
    <br />
    <br />
    <asp:LinkButton ID="lbtnEditFriends" runat="server">Freunde bearbeiten</asp:LinkButton>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Es werden"></asp:Label>
&nbsp;<asp:Label ID="lblNumberBlocks" runat="server"></asp:Label>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Benutzer von dir geblockt"></asp:Label>
    <br />
    <br />
    <asp:LinkButton ID="lbtnEditBlockList" runat="server">Blockierliste bearbeiten</asp:LinkButton>
    <br />
    <br />
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
