<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Images.aspx.cs" Inherits="HTW_Whisky.Whisky.Images" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:Panel ID="panAlbum" runat="server" CssClass="clearfix">
    </asp:Panel>

    <div class="clearfix">
        <asp:Label ID="lblLabelImageUpload" runat="server" Text="Bild hochladen" CssClass="label"></asp:Label>
        <asp:FileUpload ID="fuImageUpload" runat="server" />
    </div>
    <div class="clearfix">
        <asp:Label ID="lblLabelFriendsOnly" runat="server" Text="Nur für Freunde freigeben" CssClass="label"></asp:Label>
        <asp:RadioButton ID="radioFriendsOnly" runat="server" GroupName="ImagePermission" />
    </div>
    <div class="clearfix">
        <asp:Label ID="lblLabelAllowAll" runat="server" Text="Für alle freigeben" CssClass="label"></asp:Label>
        <asp:RadioButton ID="radioAllowAll" runat="server" GroupName="ImagePermission"/>
    </div>
    <div class="clearfix">
        <asp:Button ID="btnUploadImage" runat="server" Text="Hochladen" 
            onclick="btnUploadImage_Click" />
    </div>

    <asp:GridView ID="gvFreeImages" runat="server">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/App_Code/ImageHandler.ashx?id=" + Eval("ID")%>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
