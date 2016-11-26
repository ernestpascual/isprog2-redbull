using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Helper.GetCon());
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dr;
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select Username from redbullReg where Username='" + UserName.Text + "' AND  Password= '" + encryptPassword(Password.Text) + "'";
        /*
        cmd.Parameters.AddWithValue("@user", UserName.Text.Replace("'", ""));
        cmd.Parameters.AddWithValue("@pwd", Password.Text.Replace("'", ""));
         */

        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
             
                Response.Redirect("Dashboard.aspx");
            }
        }
        else
        {
            Validator.Text = "Invalid Username/Password";
        }
        dr.Close();
        con.Close();
    }

    private string encryptPassword(string password)
    {
        System.Security.Cryptography.SHA1 sha = System.Security.Cryptography.SHA1.Create();
        string hashed = System.Convert.ToBase64String(sha.ComputeHash(System.Text.UnicodeEncoding.Unicode.GetBytes(password)));
        return hashed.Length > 49 ? hashed.Substring(0, 49) : hashed;
    }
    }
    