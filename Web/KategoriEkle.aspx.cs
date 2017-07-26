using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using EmlakClass;
public partial class KategoriEkle : System.Web.UI.Page
{
    emlakEntities veri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var goster = from s in veri.kategori select s;
        rptKategori.DataSource = goster;
        rptKategori.DataBind();
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        
        kategori _kaydet = new kategori();
        _kaydet.KategoriAdi = txtKategoriAdi.Text;
        _kaydet.Aciklama = txtKategoriAciklama.Text;
        veri.kategori.Add(_kaydet);
        veri.SaveChanges();
        var goster = from s in veri.kategori select s;
        rptKategori.DataSource = goster;
        rptKategori.DataBind();
    }
}