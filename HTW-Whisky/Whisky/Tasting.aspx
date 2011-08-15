<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Tasting.aspx.cs" Inherits="HTW_Whisky.Whisky.AddTasting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:ObjectDataSource ID="TastingObjectDataSource" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetTastingByID" 
        
        TypeName="HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters.tastingTableAdapter" 
        InsertMethod="InsertQuery">
        <InsertParameters>
            <asp:Parameter DbType="Guid" Name="userID" />
            <asp:Parameter Name="whiskyID" Type="Int32" />
            <asp:Parameter Name="notiz" Type="String" />
            <asp:Parameter Name="art" Type="Int32" />
            <asp:Parameter Name="geschmack" Type="Int32" />
            <asp:Parameter Name="suesse" Type="Int32" />
            <asp:Parameter Name="frucht" Type="Int32" />
            <asp:Parameter Name="abgang" Type="Int32" />
            <asp:Parameter Name="gesamt" Type="Int32" />
            <asp:Parameter Name="qualitaet" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="TastingID" QueryStringField="tid" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:FormView ID="fvTasting" runat="server" DataKeyNames="ID" 
        DataSourceID="TastingObjectDataSource" RenderOuterTable="False">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            userID:
            <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' />
            <br />
            whiskyID:
            <asp:TextBox ID="whiskyIDTextBox" runat="server" 
                Text='<%# Bind("whiskyID") %>' />
            <br />
            notiz:
            <asp:TextBox ID="notizTextBox" runat="server" Text='<%# Bind("notiz") %>' />
            <br />
            art:
            <asp:TextBox ID="artTextBox" runat="server" Text='<%# Bind("art") %>' />
            <br />
            geschmack:
            <asp:TextBox ID="geschmackTextBox" runat="server" 
                Text='<%# Bind("geschmack") %>' />
            <br />
            suesse:
            <asp:TextBox ID="suesseTextBox" runat="server" Text='<%# Bind("suesse") %>' />
            <br />
            frucht:
            <asp:TextBox ID="fruchtTextBox" runat="server" Text='<%# Bind("frucht") %>' />
            <br />
            abgang:
            <asp:TextBox ID="abgangTextBox" runat="server" Text='<%# Bind("abgang") %>' />
            <br />
            gesamt:
            <asp:TextBox ID="gesamtTextBox" runat="server" Text='<%# Bind("gesamt") %>' />
            <br />
            qualitaet:
            <asp:TextBox ID="qualitaetTextBox" runat="server" 
                Text='<%# Bind("qualitaet") %>' />
            <br />
            datum:
            <asp:TextBox ID="datumTextBox" runat="server" Text='<%# Bind("datum") %>' />
            <br />
            aktiv:
            <asp:CheckBox ID="aktivCheckBox" runat="server" 
                Checked='<%# Bind("aktiv") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Aktualisieren" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <asp:HiddenField ID="hiddenWhiskyID" runat="server" 
                Value='<%# Bind("whiskyID") %>' />
            <asp:HiddenField ID="hiddenUserID" runat="server" 
                Value='<%# Bind("userID") %>' />

            <div class="clearfix">
                <asp:Label ID="lblLabelNotiz" runat="server" CssClass="label" Text="Notiz"></asp:Label>
                <asp:TextBox ID="notizTextBox" runat="server" Text='<%# Bind("notiz") %>' 
                    TextMode="MultiLine" />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelArt" runat="server" CssClass="label" Text="Sherry-/Port-/Weinfass"></asp:Label>
                <asp:DropDownList ID="ddlArt" runat="server" SelectedValue='<%# Bind("art") %>'>
                    <asp:ListItem Value="1">kein</asp:ListItem>
                    <asp:ListItem Value="2">wenig</asp:ListItem>
                    <asp:ListItem Value="3">mittel</asp:ListItem>
                    <asp:ListItem Value="4">viel</asp:ListItem>
                    <asp:ListItem Value="5">extrem</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelGeschmack" runat="server" CssClass="label" Text="Rauch- & Torfgeschmack"></asp:Label>
                <asp:DropDownList ID="ddlGeschmack" runat="server" SelectedValue='<%# Bind("geschmack") %>'>
                    <asp:ListItem Value="1">kein</asp:ListItem>
                    <asp:ListItem Value="2">wenig</asp:ListItem>
                    <asp:ListItem Value="3">mittel</asp:ListItem>
                    <asp:ListItem Value="4">viel</asp:ListItem>
                    <asp:ListItem Value="5">extrem</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            
            <div class="clearfix">
                <asp:Label ID="lblLabelSuesse" runat="server" CssClass="label" Text="Süß / Trocken"></asp:Label>
                <asp:DropDownList ID="ddlSuesse" runat="server" SelectedValue='<%# Bind("suesse") %>'>
                    <asp:ListItem Value="1">sehr süß</asp:ListItem>
                    <asp:ListItem Value="2">süß</asp:ListItem>
                    <asp:ListItem Value="3">neutral</asp:ListItem>
                    <asp:ListItem Value="4">trocken</asp:ListItem>
                    <asp:ListItem Value="5">sehr trocken</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="clearfix">
                <asp:Label ID="lblLabelFrucht" runat="server" CssClass="label" Text="Frucht / Würze"></asp:Label>
                <asp:DropDownList ID="ddlFrucht" runat="server" SelectedValue='<%# Bind("frucht") %>'>
                    <asp:ListItem Value="0">sehr fruchtig</asp:ListItem>
                    <asp:ListItem Value="25">fruchtig</asp:ListItem>
                    <asp:ListItem Value="50">beides</asp:ListItem>
                    <asp:ListItem Value="75">würzig</asp:ListItem>
                    <asp:ListItem Value="100">sehr würzig</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="clearfix">
                <asp:Label ID="lblLabelAbgang" runat="server" CssClass="label" Text="Abgang"></asp:Label>
                <asp:DropDownList ID="ddlAbgang" runat="server" SelectedValue='<%# Bind("abgang") %>'>
                    <asp:ListItem Value="0">sehr kurz</asp:ListItem>
                    <asp:ListItem Value="25">kurz</asp:ListItem>
                    <asp:ListItem Value="50">mittel</asp:ListItem>
                    <asp:ListItem Value="75">lang</asp:ListItem>
                    <asp:ListItem Value="100">sehr lang</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="clearfix">
                <asp:Label ID="lblLabelGesamt" runat="server" CssClass="label" Text="Gesamt"></asp:Label>
                <asp:DropDownList ID="ddlGesamt" runat="server" SelectedValue='<%# Bind("gesamt") %>'>
                    <asp:ListItem Value="0">leicht</asp:ListItem>
                    <asp:ListItem Value="25">mild</asp:ListItem>
                    <asp:ListItem Value="50">mittel</asp:ListItem>
                    <asp:ListItem Value="75">stark</asp:ListItem>
                    <asp:ListItem Value="100">intensiv</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="clearfix">
                <asp:Label ID="lblLabelQualitaet" runat="server" CssClass="label" Text="Qualität"></asp:Label>
                <asp:DropDownList ID="ddlQualitaet" runat="server" SelectedValue='<%# Bind("qualitaet") %>'>
                    <asp:ListItem Value="100">sehr gut</asp:ListItem>
                    <asp:ListItem Value="75">gut</asp:ListItem>
                    <asp:ListItem Value="50">durchschnittlich</asp:ListItem>
                    <asp:ListItem Value="25">schlecht</asp:ListItem>
                    <asp:ListItem Value="0">ungenießbar</asp:ListItem>
                </asp:DropDownList>
            </div>
            
            <div class="clearfix">
                <asp:ImageButton ID="imgBtnInser" runat="server" CommandName="Insert" 
                    Height="48px" ImageAlign="Middle" ImageUrl="~/img/action_accept.png" 
                    Width="48px" />
                <asp:ImageButton ID="imgBtnInsertCancel" runat="server"  CommandName="Cancel"
                    CausesValidation="False" Height="48px" ImageAlign="Middle" 
                    ImageUrl="~/img/action_cancel.png" Width="48px" />
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="clearfix">
                <asp:Label ID="lblLabelUser" runat="server" CssClass="label" Text="Erstellt von"></asp:Label>
                <asp:Label ID="userIDLabel" runat="server" Text='<%# Bind("UserName") %>' />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelWhisky" runat="server" CssClass="label" Text="Whisky"></asp:Label>
                <asp:Label ID="whiskyIDLabel" runat="server" Text='<%# Bind("WhiskyName") %>' />
            </div>
            
            <div class="clearfix">
                <asp:Label ID="lblLabelNotiz" runat="server" CssClass="label" Text="Notiz"></asp:Label>
                <asp:Label ID="notizLabel" runat="server" Text='<%# Bind("notiz") %>' />
            </div>
            
            <div class="clearfix">
                <asp:Label ID="lblLabelArt" runat="server" CssClass="label" Text="Art"></asp:Label>
                <asp:Label ID="artLabel" runat="server" Text='<%# Bind("art") %>' />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelGeschmack" runat="server" CssClass="label" Text="Geschmack"></asp:Label>
                <asp:Label ID="geschmackLabel" runat="server" Text='<%# Bind("geschmack") %>' />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelSuesse" runat="server" CssClass="label" Text="Süße"></asp:Label>
                <asp:Label ID="suesseLabel" runat="server" Text='<%# Bind("suesse") %>' />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelFrucht" runat="server" CssClass="label" Text="Frucht"></asp:Label>
                <asp:Label ID="fruchtLabel" runat="server" Text='<%# Bind("frucht") %>' />
            </div>            

            <div class="clearfix">
                <asp:Label ID="lblLabelAbgang" runat="server" CssClass="label" Text="Abgang"></asp:Label>
                <asp:Label ID="abgangLabel" runat="server" Text='<%# Bind("abgang") %>' />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelGesamt" runat="server" CssClass="label" Text="Gesamt"></asp:Label>
                <asp:Label ID="gesamtLabel" runat="server" Text='<%# Bind("gesamt") %>' />
            </div>

            <div class="clearfix">
                <asp:Label ID="lblLabelQualitaet" runat="server" CssClass="label" Text="Qualität"></asp:Label>
                <asp:Label ID="qualitaetLabel" runat="server" Text='<%# Bind("qualitaet") %>' />
            </div>
        </ItemTemplate>
    </asp:FormView>

    <div class="clearfix">
        <asp:Label ID="lblInfo" runat="server" Text="" BackColor=""></asp:Label>
        <asp:HyperLink ID="linkWhiskyList" runat="server" NavigateUrl="~/Whisky/WhiskyList.aspx" Visible="false"> Zur Whiskyübersicht </asp:HyperLink>
        <asp:HyperLink ID="linkMyTastings" runat="server" NavigateUrl="~/Whisky/Tastings.aspx" Visible="false"> Zu meinen Tastings </asp:HyperLink>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
