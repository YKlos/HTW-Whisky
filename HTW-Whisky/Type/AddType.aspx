<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddType.aspx.cs" Inherits="HTW_Whisky.AddType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <p class="clearfix">
        <asp:Label ID="lblTypeName" runat="server" Text="Name des Typs" class="label"></asp:Label><asp:TextBox ID="tbxTypeName" runat="server"></asp:TextBox>
    </p>

    <p>
        <asp:Button ID="btnAddType" runat="server" Text="Typ hinzufügen" 
            onclick="btnAddType_Click" />
    </p>
    <p>
        <asp:Label ID="lblTypeAdded" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
