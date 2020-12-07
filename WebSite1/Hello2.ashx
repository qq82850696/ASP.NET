<%@ WebHandler Language="C#" Class="Hello2" %>

using System;
using System.Web;
using System.IO;

public class Hello2 : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";
        string fullPath = context.Server.MapPath("Hello2.html");
        //context.Response.Write(fullPath);
        string content = System.IO.File.ReadAllText(fullPath);
        context.Response.Write(content);

        string ispostback = context.Request["ispostback"];
        if (ispostback=="true") {
            context.Response.Write("提交进入");
        }
        else {
            context.Response.Write("直接进入");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}