<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HTW_Whisky.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="phMain" runat="server">
    Willkommen zum Whisky Datenbank Projekt<br />
    <br />
    Die Datenbank umfasst zur Zeit
    <asp:LinkButton ID="lbtnMitglieder" runat="server" 
        PostBackUrl="~/Membership/Friends.aspx">xx Mitglieder</asp:LinkButton>
&nbsp;und <asp:LinkButton ID="lbtnWhisky" runat="server" 
        PostBackUrl="~/Whisky/WhiskyList.aspx">xx Whiskys</asp:LinkButton>
    <br />
    <br />
    <br />
    Aufgabenstellung::<br />
    <br />
    Erfassen von bevorzugten Whisky-Sorten (Whiskys können hier aus einer Datenbank 
    ausgewählt werden und wenn nicht vorhanden, können Whiskys auch in die Datenbank 
    geschrieben werden, müssen jedoch dann von einem Administrator freigeschaltet 
    werden). Zu jedem Whisky kann man ein eigenes Foto hochladen. Das Foto kann man 
    optional der Allgemeinheit zur Verfügung stellen oder nur seinen Freunden. Wenn 
    man kein eigenes Foto macht, kann man aus den Bildern der anderen Benutzer 
    auswählen, sofern diese a) ein Bild zu dem Whisky hochgeladen haben und b) 
    dieses frei gegeben haben. Zu jedem Whisky kann man seine Tasting-Erfahrungen 
    erfassen. Diese kann man seinen Freunden schicken. Wie wird man Freund: man kann 
    eine Freund-Anfrage senden an einen Benutzer-Account. Man kann Freunde 
    verwalten, blockieren usw.
</asp:Content>
