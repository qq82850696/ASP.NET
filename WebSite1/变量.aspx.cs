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

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        i++;
        Label1.Text = i.ToString();
    }
}