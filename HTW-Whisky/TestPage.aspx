<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="HTW_Whisky.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phMain" runat="server">
    <p>
        Name:<asp:TextBox ID="tbxWhiskyName" runat="server"></asp:TextBox> 
    </p>

    <p>
        Aroma:<asp:TextBox ID="tbxAroma" runat="server"></asp:TextBox>
    </p>
    
    <p>
        Geschmack:<asp:TextBox ID="tbxGeschmack" runat="server"></asp:TextBox>
    </p>

    <p>
        Abgang:<asp:TextBox ID="tbxAbgang" runat="server"></asp:TextBox>
    </p>

    <p>
        Fasstyp:<asp:TextBox ID="tbxFasstyp" runat="server"></asp:TextBox>
    </p>

    <p>
        Jahrgang:<asp:TextBox ID="tbxJahrgang" runat="server"></asp:TextBox>
    </p>

    <p>
        Alkoholgehalt:<asp:TextBox ID="tbxAlkoholgehalt" runat="server"></asp:TextBox>
    </p>

    <p>
        Liter:<asp:TextBox ID="tbxLiter" runat="server"></asp:TextBox>
    </p>

    <p>
        Typ:<asp:DropDownList ID="ddlTyp" runat="server" 
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
    

    <p>
        Beschreibung:<asp:TextBox ID="tbxBeschreibung" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>

    <p>
        Aktiv:<asp:CheckBox ID="cbxAktiv" runat="server" />
    </p>

    <p>
        <asp:Button ID="btnAddWhisky" runat="server" Text="Whisky Hinzufügen" 
            onclick="btnAddWhisky_Click" />
    </p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolbar" runat="server">
    Das ist die Toolbox
</asp:Content>
