<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="WhiskyList.aspx.cs" Inherits="HTW_Whisky.Whisky.WhiskyList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <div class="clearfix" runat="server" ID="actionNew">
        <asp:ImageButton ID="imgBtnNew" runat="server" ImageUrl="~/img/action_new.png" 
            Height="48px" ImageAlign="Middle" Width="48px" onclick="imgBtnNew_Click" />
    </div>

    <asp:GridView ID="WhiskyListGridView" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" 
        DataSourceID="WhiskyObjectDataSource">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
            <asp:BoundField DataField="fasstyp" HeaderText="Fasstyp" 
                SortExpression="fasstyp" />
            <asp:BoundField DataField="jahrgang" HeaderText="Jahrgang" 
                SortExpression="jahrgang" />
            <asp:BoundField DataField="liter" HeaderText="Inhalt" 
                SortExpression="liter" />
            <asp:TemplateField HeaderText="Typ" SortExpression="typName">
                <ItemTemplate>
                    <asp:Label ID="lblTypName" runat="server" Text='<%# Bind("typName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ID" 
                DataNavigateUrlFormatString="Whisky.aspx?id={0}" HeaderText="Details" 
                Text="Whisky anschauen" />
            <asp:HyperLinkField DataNavigateUrlFields="ID"
                DataNavigateUrlFormatString="AddTasting.aspx?wid={0}" HeaderText="Tasting"
                Text="Tasting hinzufügen" />
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
