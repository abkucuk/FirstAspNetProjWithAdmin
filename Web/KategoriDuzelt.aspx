﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KategoriDuzelt.aspx.cs" Inherits="KategoriDuzelt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default" role="navigation">
          <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Emlakjet</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="active"><a href="Default.aspx">Anasayfa <span class="sr-only">(current)</span></a></li>
                <li><a href="KategoriEkle.aspx">Kategoriler</a></li>
                <li><a href="TurEkle.aspx">Türler</a></li>
                <li><a href="TiplerEkle.aspx">Tipler</a></li>
                <li><a href="IlEkle.aspx">İl Girişi</a></li>
                <li><a href="IlceEkle.aspx">İlçe Girişi</a></li>
              </ul>
              
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
        <div style="width:200px;height:200px;margin:0 auto;">
            <asp:TextBox ID="txtKategoriAdi" runat="server" class="form-control"></asp:TextBox>
            <asp:TextBox ID="txtKategoriAciklama" runat="server" class="form-control" 
                style="margin-top:5px;"></asp:TextBox>
            <asp:Button ID="btnKaydet" runat="server" Text="Değiştir" class="btn btn-block"  
                style="margin-top:5px;" onclick="btnKaydet_Click"/>
            <asp:Label ID="lblID" runat="server" Visible="False"></asp:Label>
        </div>

    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    </form>
</body>
</html>
