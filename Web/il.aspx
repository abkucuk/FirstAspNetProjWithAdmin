<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="il.aspx.cs" Inherits="il_ilce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="margin-left:150px; margin-top:150px;">
    <asp:Label ID="lblil" runat="server" Text="il" CssClass="label-default"></asp:Label>
    <asp:TextBox ID="txtil" runat="server" placeholder="il"></asp:TextBox>
    <br />
   
    <asp:Button ID="btnGonder" runat="server" Text="Gönder" 
        onclick="btnGonder_Click" />
    </div>
    
</asp:Content>
 <%-- <asp:ListItem>Adana</asp:ListItem>
        <asp:ListItem>Adıyaman</asp:ListItem>
        <asp:ListItem>Afyon</asp:ListItem>
        <asp:ListItem>Ağrı</asp:ListItem>
        <asp:ListItem>Amasya</asp:ListItem>
        <asp:ListItem>Ankara</asp:ListItem>
        <asp:ListItem>Antalya</asp:ListItem>
        <asp:ListItem>Artvin</asp:ListItem>
        <asp:ListItem>Aydın</asp:ListItem>
        <asp:ListItem>Balıkesir</asp:ListItem>
        <asp:ListItem>Bilecik</asp:ListItem>
        <asp:ListItem>Bingöl</asp:ListItem>
        <asp:ListItem>Bitlis</asp:ListItem>
        <asp:ListItem>Burdur</asp:ListItem>
        <asp:ListItem>Bursa</asp:ListItem>
        <asp:ListItem>Çanakkale</asp:ListItem>
        <asp:ListItem>Çankırı</asp:ListItem>
        <asp:ListItem>Çorum</asp:ListItem>
        <asp:ListItem>Denizli</asp:ListItem>
        <asp:ListItem>Diyarbakır</asp:ListItem>
        <asp:ListItem>Edirne</asp:ListItem>
        <asp:ListItem>Elazığ</asp:ListItem>
        <asp:ListItem>Erzincan</asp:ListItem>
        <asp:ListItem>Erzurum</asp:ListItem>
        <asp:ListItem>Eskişehir</asp:ListItem>
        <asp:ListItem>Gaziantep</asp:ListItem>
        <asp:ListItem>Giresun</asp:ListItem>
        <asp:ListItem>Gümüşhane</asp:ListItem>
        <asp:ListItem>Hakkari</asp:ListItem>
        <asp:ListItem>Hatay</asp:ListItem>
        <asp:ListItem>Isparta</asp:ListItem>
        <asp:ListItem>İçel</asp:ListItem>
        <asp:ListItem>İstanbul</asp:ListItem>
        <asp:ListItem>İzmir</asp:ListItem>
        <asp:ListItem>Kars</asp:ListItem>
        <asp:ListItem>Kastamonu</asp:ListItem>
        <asp:ListItem>Kayseri</asp:ListItem>
        <asp:ListItem>Kırklareli</asp:ListItem>
        <asp:ListItem>Kırşehir</asp:ListItem>
        <asp:ListItem>Kocaeli</asp:ListItem>
        <asp:ListItem>Konya</asp:ListItem>
        <asp:ListItem>Kütahya</asp:ListItem>
        <asp:ListItem>Malatya</asp:ListItem>
        <asp:ListItem>Manisa</asp:ListItem>
        <asp:ListItem>Kahramanmaraş</asp:ListItem>
        <asp:ListItem>Mardin</asp:ListItem>
        <asp:ListItem>Muğla</asp:ListItem>
        <asp:ListItem>Muş</asp:ListItem>
        <asp:ListItem>Nevşehir</asp:ListItem>
        <asp:ListItem>Niğde</asp:ListItem>
        <asp:ListItem>Ordu</asp:ListItem>
        <asp:ListItem>Rize</asp:ListItem>--%>
