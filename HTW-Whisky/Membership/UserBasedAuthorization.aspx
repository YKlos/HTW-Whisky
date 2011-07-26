<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="UserBasedAuthorization.aspx.cs" Inherits="HTW_Whisky.Membership.UserBasedAuthorization" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
<h2>HURZ</h2>
    <asp:Label ID="lblPathname" runat="server" Text=""></asp:Label>
    <asp:GridView ID="FilesGrid" DataKeyNames="FullName" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
        </Columns>
    </asp:GridView>
<h2>HURZ</h2>
</asp:Content>

