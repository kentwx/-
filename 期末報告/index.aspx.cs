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
        StreamReader objStreamReader = new StreamReader(Page.MapPath("Counter.txt"));
        long lngCounter = Convert.ToInt32(objStreamReader.ReadLine());
        objStreamReader.Close();

        if (Session.IsNewSession)
        {
            lngCounter += 1;
            Session["Visited_S"] = lngCounter;
            StreamWriter objStreamWriter = new StreamWriter(MapPath("Counter.txt"), false);
            objStreamWriter.WriteLine(lngCounter);
            objStreamWriter.Close();
        }

        lblCounter.Text = "您是本站第" + Session["Visited_S"] + "位的訪客";
    }
}