using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admit_side_amb : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
   
        if (Session["id"] == null)
        {
            Response.Redirect("~/user side/index.aspx");
        }
    }
    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("mparty.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mcitizen.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/user side/index.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admit side/mresult.aspx");
    }
}
