using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admit_side_addparty : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/user side/login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload.PostedFile != null)
            {
                string imgfile = Path.GetFileName(FileUpload.PostedFile.FileName);
                string imgpath = "~/photo/" + imgfile;
                // FileUpload.SaveAs("C:\\Users\\Jolly InfoTech\\OneDrive\\Desktop\\project\\mb\\photo\\" + imgfile);
                FileUpload.PostedFile.SaveAs(Server.MapPath("~/photo/" + imgfile));
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
                SqlCommand com = con.CreateCommand();
                com.CommandText = "insert into party (name ,phone , email ,city , details , image ,tvote) values (@name,@phone,@email,@city,@details,@image,@tvote)";

                com.Parameters.AddWithValue("@name", TextBox1.Text);
                com.Parameters.AddWithValue("@phone", TextBox2.Text);
                com.Parameters.AddWithValue("@email", TextBox3.Text);
                com.Parameters.AddWithValue("@city", TextBox4.Text);
                com.Parameters.AddWithValue("@details", TextBox5.Text);
                com.Parameters.AddWithValue("@image", imgpath);
                com.Parameters.AddWithValue("@tvote", "0");
                con.Open();
                int res = com.ExecuteNonQuery();
                con.Close();

                Response.Redirect("mparty.aspx");
                con.Close();
            }
        }

        catch (Exception ex)
        {

            
        }
    }
}