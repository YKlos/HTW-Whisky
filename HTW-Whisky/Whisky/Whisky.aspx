<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Whisky.aspx.cs" Inherits="HTW_Whisky.Whisky.ShowWhisky" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:ObjectDataSource ID="WhiskyObjectDataSource" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" 
        
        TypeName="HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters.whiskyTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="WhiskyID" QueryStringField="id" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ValidationSummary ID="vsWhisky" runat="server" 
        ValidationGroup="WhiskyValidationGroup" />
    <asp:FormView ID="fvWhisky" runat="server" DataKeyNames="ID" 
        DataSourceID="WhiskyObjectDataSource" RenderOuterTable="False">
        <EditItemTemplate>
            <div class="clearfix">
                <asp:Label ID="lblLabelName" runat="server" CssClass="label" Text="Name"></asp:Label>
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAroma" runat="server" CssClass="label" Text="Aroma"></asp:Label>
                <asp:TextBox ID="aromaTextBox" runat="server" Text='<%# Bind("aroma") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelGeschmack" runat="server" CssClass="label" 
                    Text="Geschmack"></asp:Label>
                <asp:TextBox ID="geschmackTextBox" runat="server" 
                    Text='<%# Bind("geschmack") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAbgang" runat="server" CssClass="label" Text="Abgang"></asp:Label>
                <asp:TextBox ID="abgangTextBox" runat="server" Text='<%# Bind("abgang") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelFasstyp" runat="server" CssClass="label" Text="Fasstyp"></asp:Label>
                <asp:TextBox ID="fasstypTextBox" runat="server" Text='<%# Bind("fasstyp") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelBeschreibung" runat="server" CssClass="label" 
                    Text="Beschreibung"></asp:Label>
                <asp:TextBox ID="beschreibungTextBox" runat="server" 
                    Text='<%# Bind("beschreibung") %>' TextMode="MultiLine" />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelJahrgang" runat="server" CssClass="label" 
                    Text="Jahrgang"></asp:Label>
                <asp:TextBox ID="jahrgangTextBox" runat="server" 
                    Text='<%# Bind("jahrgang") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAlkoholgehalt" runat="server" CssClass="label" 
                    Text="Alkoholgehalt"></asp:Label>
                <asp:TextBox ID="alkoholgehaltTextBox" runat="server" 
                    Text='<%# Bind("alkoholgehalt") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelInhalt" runat="server" CssClass="label" Text="Inhalt"></asp:Label>
                <asp:TextBox ID="literTextBox" runat="server" Text='<%# Bind("liter") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelTyp" runat="server" CssClass="label" Text="Typ"></asp:Label>
                <asp:DropDownList ID="ddlWhiskyTyp" runat="server" 
                    DataSourceID="TypeObjectDataSource" DataTextField="name" DataValueField="ID" 
                    SelectedValue='<%# Bind("typID") %>'>
                </asp:DropDownList>
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAktiv" runat="server" CssClass="label" Text="Aktiv"></asp:Label>
                <asp:CheckBox ID="aktivCheckBox" runat="server" 
                    Checked='<%# Bind("aktiv") %>' />
            </div>
            <asp:ImageButton ID="imgBtnUpdate" runat="server" CommandName="Update" 
                Height="48px" ImageAlign="Middle" ImageUrl="~/img/action_accept.png" 
                Width="48px" />
            <asp:ImageButton ID="imgBtnCancelUpdate" runat="server" CommandName="Cancel" 
                Height="48px" ImageAlign="Middle" ImageUrl="~/img/action_cancel.png" 
                Width="48px" />
            &nbsp;
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="clearfix">
                <asp:Label ID="lblLabelName" runat="server" CssClass="label" Text="Name"></asp:Label>
                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAroma" runat="server" CssClass="label" Text="Aroma"></asp:Label>
                <asp:TextBox ID="aromaTextBox" runat="server" Text='<%# Bind("aroma") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelGeschmack" runat="server" CssClass="label" 
                    Text="Geschmack"></asp:Label>
                <asp:TextBox ID="geschmackTextBox" runat="server" 
                    Text='<%# Bind("geschmack") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAbgang" runat="server" CssClass="label" Text="Abgang"></asp:Label>
                <asp:TextBox ID="abgangTextBox" runat="server" Text='<%# Bind("abgang") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelFasstyp" runat="server" CssClass="label" Text="Fasstyp"></asp:Label>
                <asp:TextBox ID="fasstypTextBox" runat="server" Text='<%# Bind("fasstyp") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelBeschreibung" runat="server" CssClass="label" 
                    Text="Beschreibung"></asp:Label>
                <asp:TextBox ID="beschreibungTextBox" runat="server" 
                    Text='<%# Bind("beschreibung") %>' TextMode="MultiLine" />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelJahrgang" runat="server" CssClass="label" 
                    Text="Jahrgang"></asp:Label>
                <asp:TextBox ID="jahrgangTextBox" runat="server" 
                    Text='<%# Bind("jahrgang") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAlkoholgehalt" runat="server" CssClass="label" 
                    Text="Alkoholgehalt"></asp:Label>
                <asp:TextBox ID="alkoholgehaltTextBox" runat="server" 
                    Text='<%# Bind("alkoholgehalt") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelInhalt" runat="server" CssClass="label" Text="Inhalt"></asp:Label>
                <asp:TextBox ID="literTextBox" runat="server" Text='<%# Bind("liter") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelTyp" runat="server" CssClass="label" Text="Typ"></asp:Label>
                <asp:DropDownList ID="ddlWhiskyTyp" runat="server" 
                    DataSourceID="TypeObjectDataSource" DataTextField="name" DataValueField="ID" 
                    SelectedValue='<%# Bind("typID") %>'>
                </asp:DropDownList>
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAktiv" runat="server" CssClass="label" Text="Aktiv"></asp:Label>
                <asp:CheckBox ID="aktivCheckBox" runat="server" 
                    Checked='<%# Bind("aktiv") %>' />
            </div>
            <asp:ImageButton ID="imgBtnInser" runat="server" CommandName="Insert" 
                Height="48px" ImageAlign="Middle" ImageUrl="~/img/action_accept.png" 
                Width="48px" />
            &nbsp;<asp:ImageButton ID="imgBtnInsertCancel" runat="server" 
                CausesValidation="False" CommandName="Cancel" Height="48px" ImageAlign="Middle" 
                ImageUrl="~/img/action_cancel.png" Width="48px" />
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
                <asp:Label ID="lblTyp" runat="server" CssClass="show" 
                    Text='<%# Bind("typName") %>' />
            </div>
            <div class="clearfix">
                <asp:Label ID="lblLabelAktiv" runat="server" CssClass="label" Text=" Aktiv"></asp:Label>
                <asp:CheckBox ID="cbxAktiv" runat="server" Checked='<%# Bind("aktiv") %>' 
                    Enabled="false" />
            </div>
            <asp:ImageButton ID="imgBtnEdit" runat="server" CommandName="Edit" 
                Height="48px" ImageAlign="Middle" ImageUrl="~/img/action_edit.png" 
                Width="48px" />
            <asp:ImageButton ID="imgBtnDelete" runat="server" CausesValidation="False" 
                CommandName="Delete" Height="48px" ImageAlign="Middle" 
                ImageUrl="~/img/action_delete.png" Width="48px" />
            &nbsp;<asp:ImageButton ID="imgBtnNew" runat="server" CausesValidation="False" 
                CommandName="New" Height="48px" ImageAlign="Middle" 
                ImageUrl="~/img/action_new.png" Width="48px" />
            &nbsp;
        </ItemTemplate>
    </asp:FormView>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
