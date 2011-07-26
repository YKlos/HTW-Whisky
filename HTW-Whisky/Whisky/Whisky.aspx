<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Whisky.aspx.cs" Inherits="HTW_Whisky.Whisky.ShowWhisky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:ObjectDataSource ID="WhiskyObjectDataSource" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" 
        TypeName="HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters.whiskyTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="aroma" Type="String" />
            <asp:Parameter Name="geschmack" Type="String" />
            <asp:Parameter Name="abgang" Type="String" />
            <asp:Parameter Name="fasstyp" Type="String" />
            <asp:Parameter Name="beschreibung" Type="String" />
            <asp:Parameter Name="jahrgang" Type="Int32" />
            <asp:Parameter Name="alkoholgehalt" Type="Double" />
            <asp:Parameter Name="liter" Type="Double" />
            <asp:Parameter Name="typID" Type="Int32" />
            <asp:Parameter Name="aktiv" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="WhiskyID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="aroma" Type="String" />
            <asp:Parameter Name="geschmack" Type="String" />
            <asp:Parameter Name="abgang" Type="String" />
            <asp:Parameter Name="fasstyp" Type="String" />
            <asp:Parameter Name="beschreibung" Type="String" />
            <asp:Parameter Name="jahrgang" Type="Int32" />
            <asp:Parameter Name="alkoholgehalt" Type="Double" />
            <asp:Parameter Name="liter" Type="Double" />
            <asp:Parameter Name="typID" Type="Int32" />
            <asp:Parameter Name="aktiv" Type="Boolean" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="TypeObjectDataSource" runat="server" 
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
        DataSourceID="WhiskyObjectDataSource" RenderOuterTable="False">
        <EditItemTemplate>
            <div class="clearfix">
                <asp:Label ID="lblLabelName" runat="server" CssClass="label" Text="Name"></asp:Label>
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            </div>
            <br />
            Aroma:
            <asp:TextBox ID="aromaTextBox" runat="server" Text='<%# Bind("aroma") %>' />
            <br />
            Geschmack:
            <asp:TextBox ID="geschmackTextBox" runat="server" 
                Text='<%# Bind("geschmack") %>' />
            <br />
            Abgang:
            <asp:TextBox ID="abgangTextBox" runat="server" Text='<%# Bind("abgang") %>' />
            <br />
            Fasstyp:
            <asp:TextBox ID="fasstypTextBox" runat="server" Text='<%# Bind("fasstyp") %>' />
            <br />
            Beschreibung:
            <asp:TextBox ID="beschreibungTextBox" runat="server" 
                Text='<%# Bind("beschreibung") %>' TextMode="MultiLine" />
            <br />
            Jahrgang:
            <asp:TextBox ID="jahrgangTextBox" runat="server" 
                Text='<%# Bind("jahrgang") %>' />
            <br />
            Alkohol:
            <asp:TextBox ID="alkoholgehaltTextBox" runat="server" 
                Text='<%# Bind("alkoholgehalt") %>' />
            <br />
            Inhalt:
            <asp:TextBox ID="literTextBox" runat="server" Text='<%# Bind("liter") %>' />
            <br />
            Typ:
            <asp:DropDownList ID="ddlWhiskyTyp" runat="server" 
                DataSourceID="TypeObjectDataSource" DataTextField="name" DataValueField="ID" 
                SelectedValue='<%# Bind("typID") %>'>
            </asp:DropDownList>
            <br />
            Aktiv:
            <asp:CheckBox ID="aktivCheckBox" runat="server" 
                Checked='<%# Bind("aktiv") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Aktualisieren" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </EditItemTemplate>
        <InsertItemTemplate>
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            aroma:
            <asp:TextBox ID="aromaTextBox" runat="server" Text='<%# Bind("aroma") %>' />
            <br />
            geschmack:
            <asp:TextBox ID="geschmackTextBox" runat="server" 
                Text='<%# Bind("geschmack") %>' />
            <br />
            abgang:
            <asp:TextBox ID="abgangTextBox" runat="server" Text='<%# Bind("abgang") %>' />
            <br />
            fasstyp:
            <asp:TextBox ID="fasstypTextBox" runat="server" Text='<%# Bind("fasstyp") %>' />
            <br />
            beschreibung:
            <asp:TextBox ID="beschreibungTextBox" runat="server" 
                Text='<%# Bind("beschreibung") %>' />
            <br />
            jahrgang:
            <asp:TextBox ID="jahrgangTextBox" runat="server" 
                Text='<%# Bind("jahrgang") %>' />
            <br />
            alkoholgehalt:
            <asp:TextBox ID="alkoholgehaltTextBox" runat="server" 
                Text='<%# Bind("alkoholgehalt") %>' />
            <br />
            liter:
            <asp:TextBox ID="literTextBox" runat="server" Text='<%# Bind("liter") %>' />
            <br />
            typID:
            <asp:TextBox ID="typIDTextBox" runat="server" Text='<%# Bind("typID") %>' />
            <br />
            aktiv:
            <asp:CheckBox ID="aktivCheckBox" runat="server" 
                Checked='<%# Bind("aktiv") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Einfügen" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="clearfix">
                <asp:Label ID="blLabelName" runat="server" CssClass="label" Text="Name"></asp:Label>
                <asp:Label ID="lblName" runat="server" CssClass="show" 
                    Text='<%# Bind("name") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAroma" runat="server" CssClass="label" Text="Aroma"></asp:Label>
                <asp:Label ID="lblAroma" runat="server" CssClass="show" 
                    Text='<%# Bind("aroma") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelGeschmack" runat="server" CssClass="label" 
                    Text="Geschmack"></asp:Label>
                <asp:Label ID="lblGeschmack" runat="server" CssClass="show" 
                    Text='<%# Bind("geschmack") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAbgang" runat="server" CssClass="label" Text="Abgang"></asp:Label>
                <asp:Label ID="lblAbgang" runat="server" CssClass="show" 
                    Text='<%# Bind("abgang") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelFasstyp" runat="server" CssClass="label" Text="Fasstyp"></asp:Label>
                <asp:Label ID="lblFasstyp" runat="server" CssClass="show" 
                    Text='<%# Bind("fasstyp") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelBeschreibung" runat="server" CssClass="label" 
                    Text="Beschreibung"></asp:Label>
                <asp:TextBox ID="tbxBeschreibung" runat="server" Enabled="False" 
                    Text='<%# Bind("beschreibung") %>' TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelJahrgang" runat="server" CssClass="label" 
                    Text="Jahrgang"></asp:Label>
                <asp:Label ID="lblJahrgang" runat="server" CssClass="show" 
                    Text='<%# Bind("jahrgang") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAlkoholgehalt" runat="server" CssClass="label" 
                    Text="Alkoholgehalt (%)"></asp:Label>
                <asp:Label ID="lblAlkoholgehalt" runat="server" CssClass="show" 
                    Text='<%# Bind("alkoholgehalt") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelInhalt" runat="server" CssClass="label" Text="Inhalt"></asp:Label>
                <asp:Label ID="lblInhalt" runat="server" CssClass="show" 
                    Text='<%# Bind("liter") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelTyp" runat="server" CssClass="label" Text="Typ"></asp:Label>
                <asp:DropDownList ID="ddlTypID" runat="server" 
                    DataSourceID="TypeObjectDataSource" DataTextField="name" DataValueField="ID" 
                    Enabled="False" SelectedValue='<%# Bind("typID") %>'>
                </asp:DropDownList>
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAktiv" runat="server" CssClass="label" Text=" Aktiv"></asp:Label>
                <asp:CheckBox ID="cbxAktiv" runat="server" Checked='<%# Bind("aktiv") %>' 
                    Enabled="false" />
            </div>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Bearbeiten" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Löschen" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Neu" />
        </ItemTemplate>
    </asp:FormView>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
