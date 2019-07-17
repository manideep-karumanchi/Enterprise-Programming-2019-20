using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace CurrencyConverter
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["start"]= "Application Started for the first time.<br /><hr />";
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {
            Response.Write(Application["start"]);
            Response.Write("Page Exection started.<br /><hr />");
            Application["start"] = "";
        }
        protected void Application_End(object sender, EventArgs e)
        {
            Response.Write("Application Completely Terminated.<br /><hr />");
        }
        protected void Application_EndRequest(object sender, EventArgs e)
        {
            Response.Write("<hr />Execetion Completed at: " + DateTime.Now.ToString() + ".<br />");
        }
    }
}