<%@ WebHandler Language="C#" Class="IncValue1" %>

using System;
using System.Web;
using System.Text.RegularExpressions;   //引用，正则程序集

public class IncValue1 : IHttpHandler
{

    public static bool IsNumeric(string value)
    {
        return Regex.IsMatch(value, @"^[+-]?\d*[.]?\d*$");
    }

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "text/html";

        string ispostback = context.Request["ispostback"];
        string number = context.Request["number"];

        if ("true" == ispostback)
        {
            if (IsNumeric(number))
            {
                int i = Convert.ToInt32(number);
                i++;
                number = i.ToString();
            }
            else
            {
                number = "0";
            }
        }
        else
        {
            number = "0";
        }

        string fullPath = context.Server.MapPath("IncValue1.html");
        string content = System.IO.File.ReadAllText(fullPath);
        content = content.Replace("@value", number);
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