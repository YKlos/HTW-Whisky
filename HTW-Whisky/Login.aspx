﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HTW_Whisky.Membership.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:Login ID="Login1" runat="server">
    </asp:Login>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Membership/ForgotPAssword.aspx">Passwort vergessen?</asp:HyperLink>
</asp:Content>
