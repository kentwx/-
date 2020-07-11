using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click1(object sender, EventArgs e)
    {
        String sql = "";
        String sqldb = @"Data Source=.\SQLEXPRESS;Initial Catalog=webcontent;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();
        sql = "Select * from member where account = '" + txt_New_Account.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            lblMessage.Text = "此帳號已被註冊，請重新註冊";            
        }
        else
        {
            reader.Close();
            sql = "Insert into member values('" + txt_New_Account.Text.Trim() + "','" + txt_New_Pwd.Text.Trim() + "','" + txtFirst_name.Text.Trim() + "','" + txtLast_name.Text.Trim() + "','" + txtEmail.Text.Trim() + "','" + "user" + "')";
            cmd = new SqlCommand(sql, conn);
            reader = cmd.ExecuteReader();

            reader.Close();
            cmd.Dispose();
            conn.Close();
            Response.Redirect("login.aspx");
        }

        reader.Close();
        cmd.Dispose();
        conn.Close();
    }

    protected void txt_New_Account_TextChanged(object sender, EventArgs e)
    {
        String sql = "";
        String sqldb = @"Data Source=.\SQLEXPRESS;Initial Catalog=webcontent;User ID=sa;Password=1234";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();
        sql = "Select * from member where account = '" + txt_New_Account.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            lblMessage.Text = "此帳號已被註冊，請重新註冊";
        }
        reader.Close();
        cmd.Dispose();
        conn.Close();
    }
}