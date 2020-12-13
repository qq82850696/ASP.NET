using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AspNet_Session : System.Web.UI.Page
{
    private static string sessionKey1 = "Key1";
    private static string sessionKey2 = "Key2";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void btnSet_Click(object sender, EventArgs e)
    {
        Session[sessionKey1] = DateTime.Now;
        Session[sessionKey2] = 300;
    }

    protected void btnGet_Click(object sender, EventArgs e)
    {
        btnGet.Text = Session[sessionKey1].ToString() + Session[sessionKey2].ToString();
    }
}