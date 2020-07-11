using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        String sql = "";
        String sqldb = @"Data Source=.\SQLEXPRESS;Initial Catalog=webcontent;Integrated Security=True";
        SqlConnection conn = new SqlConnection(sqldb);
        conn.Open();

        sql = "select * from member where account='" + txtAccount.Text.Trim() + "' and password='" + txtPwd.Text.Trim() + "'";
        SqlCommand cmd = new SqlCommand(sql, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Session["Login"] = "OK";
            Session["real_name"] = reader["first_name"];
            Session["Last_Name"] = reader["last_name"];
            Session["Authority"] = reader["authority"];            
            lblErr.Text = Session["real_name"] + "您好，您的權限是" + Session["Authority"];
            if (Session["Authority"].ToString() == "admin")
            {
                Response.Redirect("winning_B.aspx");
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            reader.Close();
        }
        else
        {
            txtPwd.Text = "";
            lblErr.Text = "帳號密碼錯誤，請重新輸入";
        }
        reader.Close();
        conn.Close();
    }
}