﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="WhiskyList.aspx.cs" Inherits="HTW_Whisky.Whisky.WhiskyList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:GridView ID="WhiskyListGridView" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="WhiskyObjectDataSource">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Nr." InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="typID" HeaderText="Typ" SortExpression="typID" />
            <asp:BoundField DataField="jahrgang" HeaderText="Jahrgang" 
                SortExpression="jahrgang" />
            <asp:BoundField DataField="fasstyp" HeaderText="Fasstyp" 
                SortExpression="fasstyp" />
            <asp:BoundField DataField="liter" HeaderText="Inhalt" SortExpression="liter" />
            <asp:TemplateField HeaderText="Typ" SortExpression="typID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("typID") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("typID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="WhiskyObjectDataSource" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>