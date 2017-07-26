using System;
using System.Collections.Generic;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;
public partial class IlEkle : System.Web.UI.Page
{
    emlakEntities veri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var goster = from s in veri.il select s;
        rptIl.DataSource = goster;
        rptIl.DataBind();
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        il _kaydet = new il();
        _kaydet.Il1 = txtIl.Text;
        veri.il.Add(_kaydet);
        veri.SaveChanges();
        var goster = from s in veri.il select s;
        rptIl.DataSource = goster;
        rptIl.DataBind();
    }
}