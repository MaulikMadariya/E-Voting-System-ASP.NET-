using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_side_login : System.Web.UI.Page
{
   //SqlCommand con;
    //SqlCommand com;
   SqlDataReader reader;
 
    //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Jolly InfoTech\OneDrive\Desktop\project\mb\App_Data\ov.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ragister.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*SqlCommand cmd=new SqlCommand("select id from citizen where phone='"+Textphone.Text+"' and email='"+Textemail.Text+"' and password='"+Textpassword.Text+"'",con);
        con.Open(); 
        SqlDataReader dr = cmd.ExecuteReader();
        int cid = id;
        if (dr.Read())
        {
            Session["id"] = Textphone;
            Response.Redirect("vote.aspx");
        }
        else if (Textphone.Text == "9510576110" && Textemail.Text == "" && Textpassword.Text == "admit")
        {
            Session["id"] = Textpassword;
            Response.Redirect("~/admit side/home.aspx");
        }

        else
        {
            lblerr.Text="invalid input";
        }*/
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
        SqlCommand  Com = con.CreateCommand();
        Com.CommandText = "select id from citizen where phone=@phone and email=@email and password=@password";
        Com.Parameters.AddWithValue("@phone", Textphone.Text.ToString());
        Com.Parameters.AddWithValue("@email", Textemail.Text.ToString());
        Com.Parameters.AddWithValue("@password", Textpassword.Text.ToString());

        con.Open();
        reader = Com.ExecuteReader();
        reader.Read();
        
        int cid = 0;
        if (reader.HasRows)
        {
          
            cid = reader.GetInt32(0);
            Session["id"] = cid;
            Response.Redirect("~/user side/vote.aspx");

        }
        else if (Textphone.Text == "admin" && Textemail.Text == "admin" && Textpassword.Text == "admin")
        {
            Session["id"] = Textpassword;
            Response.Redirect("~/admit side/home.aspx");
        }

        else
        {
            lblerr.Text = "invalid input";
         //   Response.Write("<script>alert('NOTE:- invalid input')</script>");
        }
    }
}