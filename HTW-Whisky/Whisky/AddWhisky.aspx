<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddWhisky.aspx.cs" Inherits="HTW_Whisky.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phMain" runat="server">
    <p class="clearfix">
        <asp:Label ID="lblWhiskyName" runat="server" Text="Whisky-Name" CssClass="label"></asp:Label><asp:TextBox ID="tbxWhiskyName" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAroma" runat="server" Text="Aroma" CssClass="label"></asp:Label><asp:TextBox ID="tbxAroma" runat="server"></asp:TextBox>
    </p>
    
    <p class="clearfix">
        <asp:Label ID="lblGeschmack" runat="server" Text="Geschmack" CssClass="label"></asp:Label><asp:TextBox ID="tbxGeschmack" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAbgang" runat="server" Text="Abgang" CssClass="label"></asp:Label><asp:TextBox ID="tbxAbgang" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblFasstyp" runat="server" Text="Fasstyp" CssClass="label"></asp:Label><asp:TextBox ID="tbxFasstyp" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblJahrgang" runat="server" Text="Jahrgang" CssClass="label"></asp:Label><asp:TextBox ID="tbxJahrgang" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblBeschreibung" runat="server" Text="Beschreibung" CssClass="label"></asp:Label><asp:TextBox ID="tbxBeschreibung" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAlkoholgehalt" runat="server" Text="Alkoholgehalt" CssClass="label"></asp:Label><asp:TextBox ID="tbxAlkoholgehalt" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLiter" runat="server" Text="Inhalt" CssClass="label"></asp:Label><asp:TextBox ID="tbxLiter" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblTyp" runat="server" Text="Typ" CssClass="label"></asp:Label><asp:DropDownList ID="ddlTyp" runat="server" 
            DataSourceID="TypObjectDataSource" DataTextField="name" DataValueField="ID">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="TypObjectDataSource" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters.typenTableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="Original_ID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAktiv" runat="server" Text="Aktiv" CssClass="label"></asp:Label><asp:CheckBox ID="cbxAktiv" runat="server" />
    </p>

    <p>
        <asp:Button ID="btnAddWhisky" runat="server" Text="Whisky hinzufügen" 
            onclick="btnAddWhisky_Click" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:CheckBox ID="cbxFreigabe" runat="server" 
            Text="Bild allen Usern zu verfügung stellen" />
    </p>

    </asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolbar" runat="server">
    <asp:Menu ID="WhiskyNavigation" runat="server" 
    DataSourceID="WhiskySiteMapDataSource" StaticDisplayLevels="2">
    </asp:Menu>
<asp:SiteMapDataSource ID="WhiskySiteMapDataSource" runat="server" 
    SiteMapProvider="WhiskyNavigationSiteMap" />
</asp:Content>
