using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;

public partial class Turler : System.Web.UI.Page
{
    emlakEntities TurVeri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnGoner_Click(object sender, EventArgs e)
    {
        turler _TurKaydet = new turler();

        _TurKaydet.TurAdi = txtTurAdi.Text;
        _TurKaydet.TurAciklama = txtTurAcıklama.Text;
        _TurKaydet.tarih = DateTime.Now;
        TurVeri.turler.Add(_TurKaydet);
        TurVeri.SaveChanges();

        txtTurAcıklama.Text = "";
        txtTurAdi.Text = "";

        var atur = from a in TurVeri.turler select a;
        rptTurTekrar.DataSource = atur;
        rptTurTekrar.DataBind();
    }
 
}