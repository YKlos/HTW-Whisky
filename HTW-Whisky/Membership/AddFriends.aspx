<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddFriends.aspx.cs" Inherits="HTW_Whisky.Membership.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="697px" CellPadding="4" 
        GridLines="None" ForeColor="#333333" 
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="UserName" HeaderText="UserName"
                SortExpression="UserName" />
        </Columns>
        <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" 
        SelectCommand="SELECT        UserName
FROM            aspnet_Users
WHERE        (UserId IN
                             (SELECT        freundID
                               FROM            freunde
                               WHERE        (userID = @userID) AND (blockiert=1)))">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="userID" SessionField="userID" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT        UserName
FROM            aspnet_Users
WHERE        (UserId IN
                             (SELECT        freundID
                               FROM            freunde
                               WHERE        (userID = @userID) AND (aktiv=0)))">
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
        
        SelectCommand="SELECT [UserName] FROM [vw_aspnet_Users] WHERE ([UserId] &lt;&gt; @UserId)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="NULL" Name="UserId" SessionField="userID" 
                Type="Object" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:RadioButtonList ID="rbtnlFilter" runat="server" AutoPostBack="True" 
        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
        <asp:ListItem Selected="True">Alle Benutzer anzeigen</asp:ListItem>
        <asp:ListItem>Nur Freunde anzeigen</asp:ListItem>
<asp:ListItem>Offene Freundschaftsanfragen anzeigen</asp:ListItem>
        <asp:ListItem>Gebannte Leute anzeigen</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Button ID="btnAddFriend" runat="server" Text="als Freund hinzufügen" 
        Visible="False" Enabled="False" onclick="btnAddFriend_Click" />
    <br />
    <asp:LinkButton ID="lbtnGoBack" runat="server" 
        PostBackUrl="~/Membership/FriendsOverview.aspx">Zurück zur Übersicht</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="phToolbar" runat="server">
</asp:Content>
