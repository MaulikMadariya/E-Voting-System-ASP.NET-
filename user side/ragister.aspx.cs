using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class user_side_ragister : System.Web.UI.Page
{
    Boolean status=false;
    SqlDataReader reader;
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString); 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string a;
        int abc = 0;
        string gender = string.Empty;

        SqlCommand Cmd = sqlcon.CreateCommand();
        Cmd.CommandText = "select * from citizen ";


        sqlcon.Open();
        reader = Cmd.ExecuteReader();
     
      
        while (reader.Read())
        {
            if (reader[4].ToString() == TextBox4.Text.ToString())
            {
                status = true;
                break;
            }
           
        }
        sqlcon.Close();

        
        if (status == false)
        {

            if (RadioMale.Checked)
            {
                gender = "MALE";
            }
            else if (RadioFemale.Checked)
            {
                gender = "FEMALE";
            }
            else
            {
                gender = null;
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);

            SqlCommand com = con.CreateCommand();
            com.CommandText = "insert into citizen (name ,password , cpassword ,phone , address ,email,gender,vote) values (@name,@password,@cpassword,@phone,@address,@email,@gender,@vote)";

            com.Parameters.AddWithValue("@name", TextBox1.Text);
            com.Parameters.AddWithValue("@password", TextBox2.Text);
            com.Parameters.AddWithValue("@cpassword", TextBox3.Text);
            com.Parameters.AddWithValue("@phone", TextBox4.Text);
            com.Parameters.AddWithValue("@address", TextBox5.Text);
            com.Parameters.AddWithValue("@email", TextBox6.Text);
            com.Parameters.AddWithValue("@gender", gender);
            com.Parameters.AddWithValue("@vote", abc);

            con.Open();
            int res = com.ExecuteNonQuery();
            con.Close();

            Response.Write(status);
            Response.Redirect("login.aspx");
        }


        else
        {
            Response.Write("<script>alert('NOTE:- alreday registed')</script>");
        }
    }
   
}
        



