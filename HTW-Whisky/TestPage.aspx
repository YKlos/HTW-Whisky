<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="HTW_Whisky.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phMain" runat="server">
    <p>
        <label for="whisky_name">Whisky-Name:</label>
        <input type="text" id="whisky_name" name="whisky_name" />
        <asp:Label ID="Label1" runat="server" Text="Testlabel"></asp:Label>
        <button type="reset">Test</button>
    </p>
    <textarea class="description"></textarea>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolbar" runat="server">
Das ist die Toolbox
</asp:Content>
