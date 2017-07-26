using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;

public partial class Tipler : System.Web.UI.Page
{
    emlakEntities TipVeri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        tipler _tipKaydet = new tipler();
        _tipKaydet.TipAdi = txtTipAdi.Text;
        _tipKaydet.TipAciklama = txtTipAcıklama.Text;
        _tipKaydet.tarih = DateTime.Now;
        TipVeri.tipler.Add(_tipKaydet);
        TipVeri.SaveChanges();

        var tv = from t in TipVeri.tipler select t;
        rptTipTekrar.DataSource = tv;
        rptTipTekrar.DataBind();

    }
}