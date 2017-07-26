using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;
public partial class KategoriDuzelt : System.Web.UI.Page
{
    emlakEntities veri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {            
        int GelenID=Convert.ToInt32(Request.QueryString["ID"]);
        var Goster = (from s in veri.kategori where s.ID == GelenID select s).FirstOrDefault();
        txtKategoriAdi.Text = Goster.KategoriAdi;
        txtKategoriAciklama.Text = Goster.Aciklama;
        lblID.Text = Goster.ID.ToString();
        }

    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {

        int GelenID = Convert.ToInt32(lblID.Text);
        var Goster = (from s in veri.kategori where s.ID == GelenID select s).FirstOrDefault();
        Goster.KategoriAdi = txtKategoriAdi.Text;
        Goster.Aciklama = txtKategoriAciklama.Text;
        veri.SaveChanges();
        Response.Redirect("KategoriEkle.Aspx");

    }
}