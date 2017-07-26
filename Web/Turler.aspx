<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Turler.aspx.cs" Inherits="Turler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblTurAdi" runat="server" Text="Tür Adı" CssClass="label-default"></asp:Label>
    <asp:TextBox ID="txtTurAdi" runat="server" placeholder="Tür adı" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lblTurAcıklama" runat="server" Text="Açıklama"  CssClass="label-default"></asp:Label>
    <asp:TextBox ID="txtTurAcıklama" runat="server" placeholder="Açıklama" CssClass="form-control"></asp:TextBox>
    <asp:Button ID="btnGoner" runat="server" Text="Gönder" CssClass="btn-default" 
        onclick="btnGoner_Click" />
    <asp:Label ID="lblTurKontrol" runat="server" Text="Kaydedilmiştir !!!" Visible="false"></asp:Label>
    <hr />
    <asp:Repeater ID="rptTurTekrar" runat="server">
    <HeaderTemplate>
    <table class="table table-hover">
    <th>Tur Adı</th>&nbsp;&nbsp;
    <th>Açıklama</th>
    <th>Düzelt</th>
    </HeaderTemplate>
    <ItemTemplate>
    <tr>
    <td><%#Eval ("TurAdi") %></td>
    <td><%#Eval ("Aciklama") %></td
    <td><a href="Default.aspx?ID=<%#Eval ("id") %>"></a></td>
    <td><a href="#">Değiştir</a></td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>




</asp:Content>

