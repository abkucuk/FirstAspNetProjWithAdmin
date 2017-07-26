using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;

public partial class il_ilce : System.Web.UI.Page
{
    emlakEntities IlVeri = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnGonder_Click(object sender, EventArgs e)
    {
        il _ilKaydet = new il();

        _ilKaydet.Il1 = txtil.Text;
        IlVeri.il.Add(_ilKaydet);
        IlVeri.SaveChanges();

        
    }
}