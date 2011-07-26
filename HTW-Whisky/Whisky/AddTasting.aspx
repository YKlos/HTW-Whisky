<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddTasting.aspx.cs" Inherits="HTW_Whisky.Whisky.AddTasting" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <p class="clearfix">
        <asp:Label ID="lblNotiz" runat="server" Text="Notiz" CssClass="label"></asp:Label><asp:TextBox ID="tbxNotiz" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblArt" runat="server" Text="Art (Süße + dunkl. Frucht)" CssClass="label"></asp:Label><asp:TextBox ID="tbxArt" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblGeschmack" runat="server" Text="Rauch & Torf (medizinisch)" CssClass="label"></asp:Label>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblSuesse" runat="server" Text="Süße" CssClass="label"></asp:Label><asp:TextBox ID="tbxSuesse" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblFrucht" runat="server" Text="Frucht" CssClass="label"></asp:Label><asp:TextBox ID="tbxFrucht" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAbgang" runat="server" Text="Abgang" CssClass="label"></asp:Label><asp:TextBox ID="tbxAbgang" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblGesamt" runat="server" Text="Gesamteindruck" CssClass="label"></asp:Label><asp:TextBox ID="tbxGesamt" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblQualitaet" runat="server" Text="Qualität" CssClass="label"></asp:Label><asp:TextBox ID="tbxQualitaet" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Button ID="btnAddTasting" runat="server" Text="Tasting hinzufügen" />
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
