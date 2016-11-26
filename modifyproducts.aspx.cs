using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class modifyproducts : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(Helper.GetCon());
    protected void Page_Load(object sender, EventArgs e)
    {


    }



    protected void updateProduct_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "update redbullProducts set rbProduct ='" + productName.Text + "' ,rbPrice ='" + productPrice.Text + "' ,rbQty ='" + productQuantity.Text + "' where rbProduct ='" + productName.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Status.Text = "Update successful";
    }
    protected void deleteProduct_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "delete from redbullProducts where rbProduct = '" + productName.Text + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Status.Text = "Delete successful";
         
    }
    protected void insertProduct_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "insert into redbullProducts values('" + productName.Text + "', '" + productPrice.Text + "', '" + productQuantity.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        Status.Text = "Insert successful";


    }
    protected void clearText_Click(object sender, EventArgs e)
    {
        productName.Text = String.Empty;
        productPrice.Text = String.Empty;
        productQuantity.Text = String.Empty;
        Status.Text = String.Empty;



    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select rbProduct, rbPrice, rbQty from redbullProducts where rbProduct like '" + productListSearch.Text + "%'";
        SqlDataReader rdr = cmd.ExecuteReader();
       
        while (rdr.Read())
        {
            string prodName = rdr.GetString(0);
            string prodPrice = Math.Round(rdr.GetDecimal(1),2).ToString();
            string prodQty = rdr.GetInt32(2).ToString();
            productName.Text = prodName;
            productPrice.Text = prodPrice;
            productQuantity.Text = prodQty;
        }
        rdr.Close();
        con.Close();
        Status.Text = "Search successful";
    }

    
}



   

                
       
