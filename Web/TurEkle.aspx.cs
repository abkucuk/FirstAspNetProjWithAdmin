using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;
public partial class TurEkle : System.Web.UI.Page
{
    emlakEntities veri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var goster = from s in veri.turler select s;
        rptTur.DataSource = goster;
        rptTur.DataBind();
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        turler _kaydet = new turler();
        _kaydet.TurAdi = txtTurAdi.Text;
        _kaydet.TurAciklama = txtKTurAciklama.Text;
        veri.turler.Add(_kaydet);
        veri.SaveChanges();
        var goster = from s in veri.turler select s;
        rptTur.DataSource = goster;
        rptTur.DataBind();
    }
}