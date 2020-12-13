using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Session自增 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["Value"] = 0;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int v = Convert.ToInt32(Session["Value"]);
        v++;
        Session["Value"] = v;
        TextBox1.Text = v.ToString();
    }
}