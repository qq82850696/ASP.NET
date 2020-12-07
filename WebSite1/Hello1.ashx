<%@ WebHandler Language="C#" Class="Hello1" %>

using System;
using System.Web;

public class Hello1 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";   //响应的数据是html
        context.Response.Write("Hello World<br></br>");
        
        //获取用户提交过来的name为UserName的表单的值
        string name = context.Request.Params["UserName"];
        //将字符串写回到浏览器
        //context.Response.Write("UserName:" + name + "<br></br>");
        context.Response.Write(@" <form action='Hello1.ashx'>姓名: <input type='text' id='UserName' name='UserName' value='"+name+"' /><input type='submit' value='提交1'></form><br></br>");
       
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}