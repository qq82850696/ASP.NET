using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 变量 : System.Web.UI.Page
{
    private int i = 0; //成员变量每次请求都会new一个新的IHttphandler接口的类'变量'实例,进行处理.用完我了就GC掉,所以不会保持上次的值.
    //只有全局静态变量能保存上次的值
    private static int j = 0; //所有用户共享
    private static string MySessionID = "MySessionId";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies[MySessionID] ==null)
        {
            string strGuid = Guid.NewGuid().ToString();
            Response.SetCookie(new HttpCookie(MySessionID, strGuid));
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        i++;
        Label1.Text = i.ToString();
    }

    protected void btnReadSession_Click(object sender, EventArgs e)
    {
        string sessionId = Request.Cookies[MySessionID].Value;
        IDictionary<string, object> session = SessionMgr.GetSeccion(sessionId);
        Button1.Text = session["服务端的数据"].ToString();
    }

    protected void btnWriteSession_Click(object sender, EventArgs e)
    {
        string sessionId = Request.Cookies[MySessionID].Value;
        IDictionary<string, object> session = SessionMgr.GetSeccion(sessionId);
        session["服务端的数据"] = DateTime.Now.ToString();
        
    }
}