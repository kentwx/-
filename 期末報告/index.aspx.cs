using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class _index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.IsNewSession == true)
        {
            Application.Lock();
            Session["Visited"] = true;
            StreamReader dr = new StreamReader(Server.MapPath("Counter.txt"));
            Application["Counter"] = int.Parse(dr.ReadLine());
            dr.Close();
            Application["Counter"] = int.Parse(Application["Counter"].ToString()) + 1;
            StreamWriter wr = new StreamWriter(Server.MapPath("Counter.txt"));
            wr.WriteLine(Application["Counter"]);
            wr.Close();
            Application.UnLock();
        }
        lblCounter.Text = "您是本站第" + Application["Counter"].ToString() + "位的訪客";
    }
}