using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmlakClass;

public partial class ilce : System.Web.UI.Page
{
    emlakEntities ilceCek = new emlakEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            var dil = from d in ilceCek.il select d;
            drpIl.DataSource = dil;
            drpIl.DataTextField = "ilAdi";
            drpIl.DataValueField = "id";
            drpIl.DataBind();
        }
        
    }
    protected void btnGonderr_Click(object sender, EventArgs e)
    {
         
        
       
        var Goster = from r in ilceCek.ilce select r;
        rptIlce.DataSource = Goster;
        rptIlce.DataBind();
        
    }
}