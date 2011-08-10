<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Tasting.aspx.cs" Inherits="HTW_Whisky.Whisky.Tasting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:FormView ID="fvTasting" runat="server" 
        DataSourceID="TastingObjectDataSource" DataKeyNames="ID">
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
    <asp:ObjectDataSource ID="TastingObjectDataSource" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="HTW_Whisky.App_Code.WhiskyAppDatasetTableAdapters.tastingTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="userID" Type="Int32" />
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
            <asp:Parameter Name="userID" Type="Int32" />
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
