using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admit_side_mcitizen : System.Web.UI.Page
{
    //string con = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Jolly InfoTech\OneDrive\Desktop\project\mb\App_Data\ov.mdf;Integrated Security=True";
    SqlConnection con =  new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
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
       // using (SqlConnection sqlcon = con)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
            sqlcon.Open();
            SqlDataAdapter sqlds = new SqlDataAdapter("SELECT * FROM citizen", sqlcon);
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
            //using (SqlConnection sqlcon = con)
            {
                SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["online"].ConnectionString);
                sqlcon.Open();
                string query = "UPDATE citizen SET name=@name,password=@password,cpassword=@cpassword,phone=@phone,address=@address,email=@email,gender=@gender,vote=@vote WHERE id=@id";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@name", (Gridview1.Rows[e.RowIndex].FindControl("txtname") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@password", (Gridview1.Rows[e.RowIndex].FindControl("txtpassword") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@cpassword", (Gridview1.Rows[e.RowIndex].FindControl("txtpassword") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@phone", (Gridview1.Rows[e.RowIndex].FindControl("txtphone") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@address", (Gridview1.Rows[e.RowIndex].FindControl("txtaddress") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@email", (Gridview1.Rows[e.RowIndex].FindControl("txtemail") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@gender", (Gridview1.Rows[e.RowIndex].FindControl("txtgender") as TextBox).Text.Trim());
                sqlcmd.Parameters.AddWithValue("@vote", (Gridview1.Rows[e.RowIndex].FindControl("txtvote") as TextBox).Text.Trim());                
                sqlcmd.Parameters.AddWithValue("@id", Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString()));

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
    protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            using (SqlConnection sqlcon = con)
            {
                sqlcon.Open();
                string query = "DELETE FROM citizen  WHERE id=@id";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@id", Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value.ToString()));
                sqlcmd.ExecuteNonQuery();

                insertgridview();

            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void Gridview1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
        Gridview1.PageIndex = e.NewPageIndex;
        insertgridview();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addparty.aspx");
    }
 
}
