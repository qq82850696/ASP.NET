<%@ WebHandler Language="C#" Class="IncValue2" %>

using System;
using System.Web;
using System.Text.RegularExpressions;   //引用，正则程序集


public class IncValue2 : IHttpHandler
{
    public static bool IsNumeric(string value)
    {
        if (string.IsNullOrEmpty(value))
        {
            return false;
        }
        return Regex.IsMatch(value, @"^[+-]?\d*[.]?\d*$");
    }
    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";
        string ispostback = context.Request["ispostback"];
        string value = "0";
        if ("yes" == ispostback)
        {
            string num1 = context.Request["num1"];
            if (IsNumeric(num1))
            {
                int i = Convert.ToInt32(num1);
                i++;
                value = i.ToString();
            }
        }
        string fullPath = context.Server.MapPath("IncValue2.html");
        string content = System.IO.File.ReadAllText(fullPath);
        content = content.Replace("@value", value);
        context.Response.Write(content);
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}