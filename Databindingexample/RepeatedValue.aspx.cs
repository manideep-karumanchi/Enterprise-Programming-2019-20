using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Databindingexample
{
    public partial class RepeatedValue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<int,string> fruits = new Dictionary<int,string>();
            fruits.Add(1,"Apple");
            fruits.Add(2,"Mango");
            fruits.Add(3,"Banana");
            lstfruits.DataSource = fruits;
            lstfruits.DataTextField = "Value";
            lstfruits.DataValueField = "Key";
            lstrfruits.DataSource = fruits;
            lstlfruits.DataSource = fruits;
            DataBind();

        }
    }
}