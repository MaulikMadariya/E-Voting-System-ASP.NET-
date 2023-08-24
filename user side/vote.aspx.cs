using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_side_vote : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
    string a;
    int b;//cid
    int vote = 0;//cvote
    int pvote = 0;//party total vote
    int pid;//party id
    SqlDataReader reader;
    SqlDataReader preader;
   
     //string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Jolly InfoTech\OneDrive\Desktop\project\mb\App_Data\ov.mdf;Integrated Security=True";
   // string constr = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString).ToString();
    protected void Page_Load(object sender, EventArgs e)
     {
         



         if (Session["id"] == null)
         {
             Response.Redirect("~/user side/login.aspx");
         }
         else
         {
             a = Session["id"].ToString();
             b = Int32.Parse(a);
         }

         if (!this.IsPostBack)
         {

             con.Open();

             SqlDataAdapter sqlda = new SqlDataAdapter("Select * from party", con);
             DataTable dtdl = new DataTable();
             sqlda.Fill(dtdl);
             GridView1.DataSource = dtdl;
             GridView1.DataBind();
             con.Close();

         }
       

         {
             SqlCommand Com = con.CreateCommand();
             Com.CommandText = "select vote from citizen where id=" + b;
             Com.Parameters.AddWithValue("@vote", b);

             con.Open();
             reader = Com.ExecuteReader();
             reader.Read();


             if (reader.HasRows)
             {
                 vote = reader.GetInt32(0);
             }
             con.Close();

         }
     }
  
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("~/user side/login.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }





    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (vote == 0)
        {
            if (e.CommandName == "Select")
            {
                {
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = GridView1.Rows[rowIndex];
                    string partyid = row.Cells[0].Text;
                    pid = Int32.Parse(partyid);
                }

                {

                    con.Open();
                    string query = "UPDATE citizen SET vote=@vote WHERE id=" + b;
                    SqlCommand sqlcmd = new SqlCommand(query, con);
                    sqlcmd.Parameters.AddWithValue("@vote", vote = vote + 1);
                    sqlcmd.ExecuteNonQuery();
                    con.Close();
                }

                {
                    SqlCommand Com = con.CreateCommand();
                    Com.CommandText = "select tvote from party where id=" + pid;
                    Com.Parameters.AddWithValue("@tvote", pid);

                    con.Open();
                    reader = Com.ExecuteReader();
                    reader.Read();
                    if (reader.HasRows)
                    {
                        pvote = reader.GetInt32(0);
                    }
                    con.Close();
                }

                {
                    con.Open();
                    string query = "UPDATE party SET tvote=@tvote WHERE id=" + pid;
                    SqlCommand sqlcmd = new SqlCommand(query, con);
                    //Response.Write(pvote);
                    sqlcmd.Parameters.AddWithValue("@tvote", pvote = pvote + 1);
                    sqlcmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            Response.Write("<script>alert('NOTE:- Vote Submited SuccessFully')</script>");
        }
        else
        {
            Response.Write("<script>alert('NOTE:- alreday you are voted')</script>");
        }
    }
 
}
    

