<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddTasting.aspx.cs" Inherits="HTW_Whisky.Whisky.AddTasting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
        DataSourceID="ObjectDataSource1" Width="396px">
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
            <asp:TextBox ID="userIDTextBox" runat="server" Text='<%# Bind("userID") %>' Visible="false" />
            <asp:TextBox ID="whiskyIDTextBox" runat="server" Text='<%# Bind("whiskyID") %>' Visible="false" />
            Notiz:
            <asp:TextBox ID="notizTextBox" runat="server" Text='<%# Bind("notiz") %>' />
            <br /><br />
            Sherry-/Port-/Weinfass:
            <asp:DropDownList ID="ddlArt" runat="server" SelectedValue='<%# Bind("art") %>'>
                <asp:ListItem Value="1">kein</asp:ListItem>
                <asp:ListItem Value="2">wenig</asp:ListItem>
                <asp:ListItem Value="3">mittel</asp:ListItem>
                <asp:ListItem Value="4">viel</asp:ListItem>
                <asp:ListItem Value="5">extrem</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            Rauch- & Torfgeschmack:
            <asp:DropDownList ID="ddlGeschmack" runat="server" SelectedValue='<%# Bind("geschmack") %>'>
                <asp:ListItem Value="1">kein</asp:ListItem>
                <asp:ListItem Value="2">wenig</asp:ListItem>
                <asp:ListItem Value="3">mittel</asp:ListItem>
                <asp:ListItem Value="4">viel</asp:ListItem>
                <asp:ListItem Value="5">extrem</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            Süß / Trocken:
            <asp:DropDownList ID="ddlSuesse" runat="server" SelectedValue='<%# Bind("suesse") %>'>
                <asp:ListItem Value="1">sehr süß</asp:ListItem>
                <asp:ListItem Value="2">süß</asp:ListItem>
                <asp:ListItem Value="3">neutral</asp:ListItem>
                <asp:ListItem Value="4">trocken</asp:ListItem>
                <asp:ListItem Value="5">sehr trocken</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            Frucht/Würze:
            <asp:DropDownList ID="ddlFrucht" runat="server" SelectedValue='<%# Bind("frucht") %>'>
                <asp:ListItem Value="0">sehr fruchtig</asp:ListItem>
                <asp:ListItem Value="25">fruchtig</asp:ListItem>
                <asp:ListItem Value="50">beides</asp:ListItem>
                <asp:ListItem Value="75">würzig</asp:ListItem>
                <asp:ListItem Value="100">sehr würzig</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            Abgang:
            <asp:DropDownList ID="ddlAbgang" runat="server" SelectedValue='<%# Bind("abgang") %>'>
                <asp:ListItem Value="0">sehr kurz</asp:ListItem>
                <asp:ListItem Value="25">kurz</asp:ListItem>
                <asp:ListItem Value="50">mittel</asp:ListItem>
                <asp:ListItem Value="75">lang</asp:ListItem>
                <asp:ListItem Value="100">sehr lang</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            Gesamteindruck:
            <asp:DropDownList ID="ddlGesamt" runat="server" SelectedValue='<%# Bind("gesamt") %>'>
                <asp:ListItem Value="0">leicht</asp:ListItem>
                <asp:ListItem Value="25">mild</asp:ListItem>
                <asp:ListItem Value="50">mittel</asp:ListItem>
                <asp:ListItem Value="75">stark</asp:ListItem>
                <asp:ListItem Value="100">intensiv</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            Qualitaet:
            <asp:DropDownList ID="ddlQualitaet" runat="server" SelectedValue='<%# Bind("qualitaet") %>'>
                <asp:ListItem Value="100">sehr gut</asp:ListItem>
                <asp:ListItem Value="75">gut</asp:ListItem>
                <asp:ListItem Value="50">durchschnittlich</asp:ListItem>
                <asp:ListItem Value="25">schlecht</asp:ListItem>
                <asp:ListItem Value="0">ungenießbar</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            datum:
            <asp:TextBox ID="datumTextBox" runat="server" Text='<%# Bind("datum") %>' />
            <br /><br />
            aktiv:
            <asp:CheckBox ID="aktivCheckBox" runat="server" 
                Checked='<%# Bind("aktiv") %>' />
            <br /><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Einfügen" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            userID:
            <asp:Label ID="userIDLabel" runat="server" Text='<%# Bind("userID") %>' />
            <br />
            whiskyID:
            <asp:Label ID="whiskyIDLabel" runat="server" Text='<%# Bind("whiskyID") %>' />
            <br />
            notiz:
            <asp:Label ID="notizLabel" runat="server" Text='<%# Bind("notiz") %>' />
            <br />
            art:
            <asp:Label ID="artLabel" runat="server" Text='<%# Bind("art") %>' />
            <br />
            geschmack:
            <asp:Label ID="geschmackLabel" runat="server" Text='<%# Bind("geschmack") %>' />
            <br />
            suesse:
            <asp:Label ID="suesseLabel" runat="server" Text='<%# Bind("suesse") %>' />
            <br />
            frucht:
            <asp:Label ID="fruchtLabel" runat="server" Text='<%# Bind("frucht") %>' />
            <br />
            abgang:
            <asp:Label ID="abgangLabel" runat="server" Text='<%# Bind("abgang") %>' />
            <br />
            gesamt:
            <asp:Label ID="gesamtLabel" runat="server" Text='<%# Bind("gesamt") %>' />
            <br />
            qualitaet:
            <asp:Label ID="qualitaetLabel" runat="server" Text='<%# Bind("qualitaet") %>' />
            <br />
            datum:
            <asp:Label ID="datumLabel" runat="server" Text='<%# Bind("datum") %>' />
            <br />
            aktiv:
            <asp:CheckBox ID="aktivCheckBox" runat="server" Checked='<%# Bind("aktiv") %>' 
                Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Bearbeiten" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Löschen" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                CommandName="New" Text="Neu" />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="WhiskyAppDatasetTableAdapters.tastingTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
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
            <asp:Parameter Name="datum" Type="DateTime" />
            <asp:Parameter Name="aktiv" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
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
            <asp:Parameter Name="datum" Type="DateTime" />
            <asp:Parameter Name="aktiv" Type="Boolean" />
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:Label ID="lblInfo" runat="server" Text="" BackColor=""></asp:Label>
    <br /><br />
    <asp:HyperLink ID="linkWhiskyList" runat="server" NavigateUrl="~/Whisky/WhiskyList.aspx" Visible="false"> Zur Whiskyübersicht </asp:HyperLink>
    <asp:HyperLink ID="linkMyTastings" runat="server" NavigateUrl="~/Whisky/Tastings.aspx" Visible="false"> Zu meinen Tastings </asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
    
</asp:Content>
