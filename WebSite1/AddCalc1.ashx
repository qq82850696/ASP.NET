<%@ WebHandler Language="C#" Class="AddCalc1" %>

using System;
using System.Web;

public class AddCalc1 : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/html";


        string postback = context.Request["huilaile"];
        string result="";
        string num1 = "", num2 = "";
        if ("yes" == postback)
        {
             num1 = context.Request["num1"];
             num2 = context.Request["num2"];
            int i1 = Convert.ToInt32(num1);
            int i2 = Convert.ToInt32(num2);
            result = (i1 + i2).ToString();
        }
        
        string fullPath = context.Server.MapPath("AddCalc1.html");
        string html= System.IO.File.ReadAllText(fullPath);
        html = html.Replace("@num1", num1);
        html = html.Replace("@num2", num2);
        html = html.Replace("@result", result);
        context.Response.Write(html);
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}