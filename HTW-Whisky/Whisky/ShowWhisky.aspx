<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ShowWhisky.aspx.cs" Inherits="HTW_Whisky.Whisky.ShowWhisky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <p class="clearfix">
        <asp:Label ID="lblLabelName" runat="server" Text="Name" CssClass="label"></asp:Label>
        <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLabelAroma" runat="server" Text="Aroma" CssClass="label"></asp:Label>
        <asp:Label ID="lblAroma" runat="server" Text=""></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLabelGeschmack" runat="server" Text="Geschmack" CssClass="label"></asp:Label>
        <asp:Label ID="lblGeschmack" runat="server" Text=""></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLabelAbgang" runat="server" Text="Abgang" CssClass="label"></asp:Label>
        <asp:Label ID="lblAbgang" runat="server" Text=""></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLabelFassTyp" runat="server" Text="Fasstyp" CssClass="label"></asp:Label>
        <asp:Label ID="lblFassTyp" runat="server" Text=""></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLabelBeschreibung" runat="server" Text="Beschreibung" CssClass="label"></asp:Label>
        <asp:Label ID="lblBeschreibung" runat="server" Text=""></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLabelJahrgang" runat="server" Text="Jahrgang" CssClass="label"></asp:Label>
        <asp:Label ID="lblJahrgang" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
