using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class user_side_allparty : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Jolly InfoTech\OneDrive\Desktop\project\mb\App_Data\ov.mdf;Integrated Security=True";
        using (SqlConnection sqlcon = con)
        {

            sqlcon.Open();
            
            SqlDataAdapter sqlda = new SqlDataAdapter("Select * from party", sqlcon);
            DataTable dtdl = new DataTable();
            sqlda.Fill(dtdl);
            if (dtdl.Rows.Count > 0)
            {
                GridView1.DataSource = dtdl;
                GridView1.DataBind();

            }
            else
            {
                dtdl.Rows.Add(dtdl.NewRow());
                GridView1.DataSource = dtdl;
                GridView1.DataBind();
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = dtdl.Columns.Count;
                GridView1.Rows[0].Cells[0].Text = " No Party Add..!";
                GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }
          //  GridView1.DataSource = dtdl;
            //GridView1.DataBind();
            sqlcon.Close();
            
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addparty.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataBind();
    }
}
