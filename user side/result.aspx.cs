using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class user_side_result : System.Web.UI.Page
{
    SqlDataReader reader;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
    string result=string.Empty; // result
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["id"] == null)
        {
            Response.Redirect("~/user side/login.aspx");
        }

        {
            SqlCommand Com = con.CreateCommand();
            Com.CommandText = "select * from result ";


            con.Open();
            reader = Com.ExecuteReader();
            while (reader.Read())
            {
                result = reader[0].ToString();
            }
            con.Close();

        }




        using (SqlConnection sqlcon = con)
        {

          

                sqlcon.Open();

                SqlDataAdapter sqlda1 = new SqlDataAdapter("Select * from party", sqlcon);
                DataTable dtdl1 = new DataTable();
                sqlda1.Fill(dtdl1);
            if (result == "True")
            {
                GridView1.DataSource = dtdl1;
                GridView1.DataBind();
            }
            else
            {
                dtdl1.Clear();
                dtdl1.Rows.Add(dtdl1.NewRow());
                GridView1.DataSource = dtdl1;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtdl1.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = " No Data Found..!";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
                    //    Response.Write("page not found");
                
            }
        }

    }
    
   
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}