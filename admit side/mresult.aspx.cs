using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admit_side_mresult : System.Web.UI.Page
{
   // string con = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Jolly InfoTech\OneDrive\Desktop\project\mb\App_Data\ov.mdf;Integrated Security=True";
   SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("~/user side/login.aspx");
        }
        if (!IsPostBack)
        {

            insertgridview();
        }
    
    }
    void insertgridview()
    {
        DataTable dtbl = new DataTable();
      //  using (SqlConnection sqlcon = new SqlConnection(con))
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
            sqlcon.Open();
            SqlDataAdapter sqlds = new SqlDataAdapter("SELECT * FROM result", sqlcon);
            sqlds.Fill(dtbl);
            sqlcon.Close();
        }
        if (dtbl.Rows.Count > 0)
        {
            Gridview1.DataSource = dtbl;
            Gridview1.DataBind();

        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            Gridview1.DataSource = dtbl;
            Gridview1.DataBind();
            Gridview1.Rows[0].Cells.Clear();
            Gridview1.Rows[0].Cells.Add(new TableCell());
            Gridview1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            Gridview1.Rows[0].Cells[0].Text = " No Data Found..!";
            Gridview1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }
        

    }
    protected void Gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Gridview1.EditIndex = e.NewEditIndex;
        insertgridview();
    }
    protected void Gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        Gridview1.EditIndex = -1;
        insertgridview();
    }
    protected void Gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            //using (SqlConnection sqlcon = new SqlConnection(con))
            {
                SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
                sqlcon.Open();
                string query = "UPDATE result SET result=@result";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@result", (Gridview1.Rows[e.RowIndex].FindControl("DD1") as DropDownList).Text.Trim());
                //sqlcmd.Parameters.AddWithValue("@result", Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString()));

                sqlcmd.ExecuteNonQuery();
                Gridview1.EditIndex = -1;
                insertgridview();
                sqlcon.Close();

            }
        }
        catch (Exception ex)
        {


        }
    }
}