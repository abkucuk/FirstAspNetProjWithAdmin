<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ilcee.aspx.cs" Inherits="ilce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DropDownList ID="drpIl" runat="server">
    </asp:DropDownList><br />
    <asp:Label ID="lblIlce" runat="server" Text="İlçe"></asp:Label>
    <asp:TextBox ID="txtIlce" runat="server" placeholder="İlçe"></asp:TextBox>
    <asp:Button ID="btnGonderr" runat="server" Text="Kaydet" 
        onclick="btnGonderr_Click" />
    <asp:Repeater ID="rptIlce" runat="server">
    </asp:Repeater>
</asp:Content>

