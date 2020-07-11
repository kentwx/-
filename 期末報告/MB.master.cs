using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MB : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (HttpContext.Current.Session["Login"] == null)   //***C#不加上這一段會報錯。
        {
            HttpContext.Current.Response.Write("<h3><font color=red><b>嚴重警告！</b></font>您的帳號、密碼錯誤！是非法使用者～</h3>");
            HttpContext.Current.Response.End();     //--註解：程式立刻終止！
        }

        //============================================
        //== Session如果是 null，一使用就會報錯。所以要用上面的判別式來預防。
        //============================================
        if (HttpContext.Current.Session["Login"].ToString() == "OK" && HttpContext.Current.Session["Authority"].ToString() == "admin")
        {
            Label1.Text = Session["real_name"].ToString() + "，您好";
            //HttpContext.Current.Response.Write("<h3>恭喜您，您成功登入，才會看見這一頁！</h3><hr />");
            //HttpContext.Current.Response.Write("<br />您的個人資料是----<br>");
            //HttpContext.Current.Response.Write("<br />    帳號 =>  " + HttpContext.Current.Session["name"].ToString());
            // HttpContext.Current.Response.Write("<br />    姓名 =>  " + HttpContext.Current.Session["u_realname"].ToString());
            // HttpContext.Current.Response.Write("<br />    密碼 =>  " + HttpContext.Current.Session["u_passwd"].ToString());
        }
        else
        {
            HttpContext.Current.Response.Write("<h3><font color=red><b>嚴重警告！</b></font>此屬管理者頁面，您已嚴重越權！是非法使用者～</h3>");
            HttpContext.Current.Response.End();     //--註解：程式立刻終止！
        }

        return;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("index.aspx");
    }
}
