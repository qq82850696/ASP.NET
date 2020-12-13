<%@ WebHandler Language="C#" Class="YZM" %>

using System;
using System.Web;
using System.Drawing;

public class YZM : IHttpHandler,System.Web.SessionState.IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "image/JPEG";
        using (System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(200, 100))
        {
            using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
            {
                //g.DrawString("TXYY", new System.Drawing.Font("宋体", 30), System.Drawing.Brushes.Red, new System.Drawing.PointF(0, 0));
                //g.DrawEllipse(Pens.Red, new Rectangle(10, 10, 10, 10));
                //g.DrawEllipse(Pens.Gray, new Rectangle(20, 20, 20, 20));
                //

                Random random = new Random();
                int code = random.Next(1000,9999);

                string strCode = code.ToString();
                HttpContext.Current.Session["Code"] = strCode;
                g.DrawString(strCode, new Font("宋体", 20), Brushes.Gray, new PointF(0, 0));

                bitmap.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
               
            }
        }


    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}