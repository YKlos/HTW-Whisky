<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="MyFavorites.aspx.cs" Inherits="HTW_Whisky.Whisky.MyFavorites" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="aroma" HeaderText="aroma" SortExpression="aroma" />
            <asp:BoundField DataField="geschmack" HeaderText="geschmack" 
                SortExpression="geschmack" />
            <asp:BoundField DataField="abgang" HeaderText="abgang" 
                SortExpression="abgang" />
            <asp:BoundField DataField="fasstyp" HeaderText="fasstyp" 
                SortExpression="fasstyp" />
            <asp:BoundField DataField="beschreibung" HeaderText="beschreibung" 
                SortExpression="beschreibung" />
            <asp:BoundField DataField="jahrgang" HeaderText="jahrgang" 
                SortExpression="jahrgang" />
            <asp:BoundField DataField="alkoholgehalt" HeaderText="alkoholgehalt" 
                SortExpression="alkoholgehalt" />
            <asp:BoundField DataField="liter" HeaderText="liter" SortExpression="liter" />
            <asp:BoundField DataField="typID" HeaderText="typID" SortExpression="typID" />
            <asp:CheckBoxField DataField="aktiv" HeaderText="aktiv" 
                SortExpression="aktiv" />
            <asp:BoundField DataField="typName" HeaderText="typName" 
                SortExpression="typName" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy1" 
        TypeName="WhiskyAppDatasetTableAdapters.whiskyTableAdapter">
        <SelectParameters>
            <asp:Parameter DbType="Guid" 
                DefaultValue="0986cb65-47e6-4048-872f-174f8c2d91f4" Name="UserID" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
