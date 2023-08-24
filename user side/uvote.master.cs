using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_side_uvote : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

      //  if (Session["id"] == null)
       // {
        //    Response.Redirect("~/user side/index.aspx");
        //}
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("vote.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("result.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/user side/login.aspx");
    }
}
