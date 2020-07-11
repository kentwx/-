using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MP : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

     
        if (HttpContext.Current.Session["Login"] == null)
        {
            HyperLink1.Visible = true;
            Label1.Text = "";
            Label1.Visible = false;
            Button1.Visible = false;
        }
        else if (HttpContext.Current.Session["Login"].ToString() == "OK")
        {
              HyperLink1.Visible = false;
            Label1.Text = Session["real_name"].ToString() + "，您好";
            Label1.Visible = true;
            Button1.Visible = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("index.aspx");
    }
}
