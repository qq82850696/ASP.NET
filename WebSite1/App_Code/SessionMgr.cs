using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Web;

/// <summary>
/// SessionMgr 的摘要说明
/// </summary>
public class SessionMgr
{
    private static IDictionary<string, IDictionary<string, object>> data = new Dictionary<string, IDictionary<string, object>>();

    public static IDictionary<string,object> GetSeccion(string sessionID)
    {
        if (data.ContainsKey(sessionID))
        {
            return data[sessionID];
        }
        else
        {
            IDictionary<string, object> session = new Dictionary<string, object>();
            data[sessionID] = session;
            return session;
        }
    }
}