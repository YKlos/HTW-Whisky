<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddWhisky.aspx.cs" Inherits="HTW_Whisky.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phMain" runat="server">
    <p class="clearfix">
        <asp:Label ID="lblWhiskyName" runat="server" Text="Whisky-Name" class="label"></asp:Label><asp:TextBox ID="tbxWhiskyName" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAroma" runat="server" Text="Aroma" class="label"></asp:Label><asp:TextBox ID="tbxAroma" runat="server"></asp:TextBox>
    </p>
    
    <p class="clearfix">
        <asp:Label ID="lblGeschmack" runat="server" Text="Geschmack" class="label"></asp:Label><asp:TextBox ID="tbxGeschmack" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAbgang" runat="server" Text="Abgang" class="label"></asp:Label><asp:TextBox ID="tbxAbgang" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblFasstyp" runat="server" Text="Fasstyp" class="label"></asp:Label><asp:TextBox ID="tbxFasstyp" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblJahrgang" runat="server" Text="Jahrgang" class="label"></asp:Label><asp:TextBox ID="tbxJahrgang" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblBeschreibung" runat="server" Text="Beschreibung" class="label"></asp:Label><asp:TextBox ID="tbxBeschreibung" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblAlkoholgehalt" runat="server" Text="Alkoholgehalt" class="label"></asp:Label><asp:TextBox ID="tbxAlkoholgehalt" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblLiter" runat="server" Text="Inhalt" class="label"></asp:Label><asp:TextBox ID="tbxLiter" runat="server"></asp:TextBox>
    </p>

    <p class="clearfix">
        <asp:Label ID="lblTyp" runat="server" Text="Typ" class="label"></asp:Label><asp:DropDownList ID="ddlTyp" runat="server" 
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
        <asp:Label ID="lblAktiv" runat="server" Text="Aktiv" class="label"></asp:Label><asp:CheckBox ID="cbxAktiv" runat="server" />
    </p>

    <p>
        <asp:Button ID="btnAddWhisky" runat="server" Text="Whisky hinzufügen" 
            onclick="btnAddWhisky_Click" />
    </p>

    <p>
        <asp:Label ID="lblWhiskyAdded" runat="server" Text=""></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolbar" runat="server">
    Das ist die Toolbox
</asp:Content>
