using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;
public partial class TiplerEkle : System.Web.UI.Page
{
    emlakEntities veri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var goster = from s in veri.tipler select s;
        rptTip.DataSource = goster;
        rptTip.DataBind();

    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        tipler _kaydet = new tipler();
        _kaydet.TipAciklama = txtKTipAciklama.Text;
        _kaydet.TipAdi = txtTipAdi.Text;
        veri.tipler.Add(_kaydet);
        veri.SaveChanges();
        var goster = from s in veri.tipler select s;
        rptTip.DataSource = goster;
        rptTip.DataBind();

    }
}