using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;

public partial class IlceEkle : System.Web.UI.Page
{
    emlakEntities veri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        var ilveri = from a in veri.il select a;
        drpIl.DataSource = ilveri;
        drpIl.DataTextField = "Il1";
        drpIl.DataValueField = "ID";
        drpIl.DataBind();
        lblMesaj.Text = "Sayfa ilk defa yükleniyor";
        }
        else
        {
            lblMesaj.Text = "Butona basıldı o yüzden drop yeniden yüklenmedi.";
        }
        
        
        var goster = from s in veri.ilce select s;
        rptIl.DataSource = goster;
        rptIl.DataBind();
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        ilce _kaydet = new ilce();
        _kaydet.IlId = Convert.ToInt32(drpIl.SelectedValue);
        _kaydet.Ilce1 = txtIlce.Text;
        veri.ilce.Add(_kaydet);
        veri.SaveChanges();
        var goster = from s in veri.ilce select s;
        rptIl.DataSource = goster;
        rptIl.DataBind();
    }
}