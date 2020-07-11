using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shopping : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["Authority"] == null)   //***C#不加上這一段會報錯。
        {
            HttpContext.Current.Response.Write("<h2>您仍是<font color=red><b>非會員身分！</b></font>請先 <font color=blue><a href=login.aspx>登入/註冊</a></font> 後再重新瀏覽＞o＜     </h2>");
            HttpContext.Current.Response.End();     //--註解：程式立刻終止！
        }
    }

    protected void close_SelectedIndexChanged(object sender, EventArgs e)
    {
        time.Items.Clear();
        switch (close.SelectedValue)
        {
            case "0":
                time.Items.Add(new ListItem("==請先選擇課程==", "0"));
                time.Enabled = false;
                break;
            case "1" :
                time.Items.Add(new ListItem("==請選擇時間==", "0"));
                time.Items.Add(new ListItem("上午9點~12點", "1"));
                time.Items.Add(new ListItem("下午1點~3點", "2"));
               
                time.Enabled = true;
                break;
            case "2":
                time.Items.Add(new ListItem("==請選擇時間==", "0"));
                time.Items.Add(new ListItem("上午9點~12點", "1"));
                time.Items.Add(new ListItem("下午1點~3點", "2"));

                time.Enabled = true;
                break;
            case "3":
                time.Items.Add(new ListItem("==請選擇時間==", "0"));
                time.Items.Add(new ListItem("上午9點~下午3點", "1"));               
                time.Enabled = true;
                break;
        }
    }
    protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
    {
           txt_date.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        string output = string.Format("您選擇的課程是 :{0}，日期:{2}，時段:{1}，",
          close.SelectedItem.Text, time.SelectedItem.Text,
          Calendar1.SelectedDate.ToShortDateString());
        msg.Text = output;
    }
}