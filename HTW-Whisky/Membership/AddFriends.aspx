<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddFriends.aspx.cs" Inherits="HTW_Whisky.Membership.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:GridView ID="GridView1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width="560px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:RadioButtonList ID="rbtnlFilter" runat="server" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
        style="margin-top: 0px">
        <asp:ListItem Selected="True">Alle Benutzer anzeigen</asp:ListItem>
        <asp:ListItem>Nur Freunde anzeigen</asp:ListItem>
<asp:ListItem>Eingehende Freundschaftsanfragen</asp:ListItem>
        <asp:ListItem>Ausgehende Freunschfatsabfragen</asp:ListItem>
        <asp:ListItem>Gebannte Benutzer anzeigen</asp:ListItem>
    </asp:RadioButtonList>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        
        SelectCommand="SELECT UserName FROM aspnet_Users WHERE (UserId IN (SELECT freundID FROM freunde WHERE (userID = @userID) AND (blockiert = 1)))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="userID" SessionField="userID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        
        SelectCommand="SELECT UserName FROM aspnet_Users WHERE (UserId IN (SELECT freundID FROM freunde WHERE (userID = @userID) AND (aktiv = 0) AND (blockiert = 0)))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="userID" SessionField="userID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        
        SelectCommand="SELECT UserName FROM aspnet_Users WHERE (UserId IN (SELECT userID FROM freunde WHERE (freundID = @userID) AND (aktiv = 0) AND blockiert=0))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="userID" SessionField="userID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        
        
        SelectCommand="SELECT UserName FROM aspnet_Users WHERE (UserId IN (SELECT freundID FROM freunde WHERE (userID = @userID) AND (aktiv = 1)))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="userID" SessionField="userID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        
        
        
        SelectCommand="SELECT UserName FROM vw_aspnet_Users WHERE (UserId &lt;&gt; @userID) AND (UserId NOT IN (SELECT freundID FROM freunde WHERE (userID = @userID) AND (blockiert = 1))) AND (UserId NOT IN (SELECT userID FROM freunde AS freunde_1 WHERE (freundID = @userID) AND (blockiert = 1)))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="UserId" SessionField="userID" 
                Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnDoAction" runat="server" Text="als Freund hinzufügen" 
        Visible="False" onclick="btnDoAction_Click" />
    <asp:Button ID="btnBlock" runat="server" 
        Text="Benutzer auf Blockierliste setzen" Visible="False" 
        onclick="btnBlock_Click" />
    <br />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
