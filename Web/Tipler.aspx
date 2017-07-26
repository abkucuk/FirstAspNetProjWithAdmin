<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tipler.aspx.cs" Inherits="Tipler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:Label ID="lblTipAdi" runat="server" Text="Tip Adı" CssClass="label-default"></asp:Label>
    <asp:TextBox ID="txtTipAdi" runat="server" placeholder="Tip adı" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lblTipAcıklama" runat="server" Text="Açıklama"  CssClass="label-default"></asp:Label>
    <asp:TextBox ID="txtTipAcıklama" runat="server" placeholder="Açıklama" CssClass="form-control"></asp:TextBox>
    <asp:Button ID="btnGoner" runat="server" Text="Gönder" CssClass="btn-default" />
    <asp:Label ID="lblTipKontrol" runat="server" Text="Kaydedilmiştir !!!" Visible="false"></asp:Label>
    <hr />
    <asp:Repeater ID="rptTipTekrar" runat="server">
    <HeaderTemplate>
    <table class="table table-hover">
    <th>Tip Adı</th>&nbsp;&nbsp;
    <th>Açıklama</th>
    </HeaderTemplate>
    <ItemTemplate>
    <tr>
    <td><%#Eval ("TipAdi") %></td>
    <td><%#Eval ("Aciklama") %></td>
    </tr>
    </ItemTemplate>
    <FooterTemplate>
    </table>
    </FooterTemplate>
    </asp:Repeater>
</asp:Content>

