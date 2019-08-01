using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RichControls
{
    public partial class Calendarexample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                Cal.Visible = false;
            }
        }

        protected void imgcal_Click(object sender, ImageClickEventArgs e)
        {
            if (Cal.Visible)
            {
                Cal.Visible = false;
            }
            else {
                Cal.Visible = true;
            }
        }

        protected void Cal_SelectionChanged(object sender, EventArgs e)
        {
            String Dates="";
            foreach (DateTime date in Cal.SelectedDates) {
                Dates += date.ToShortDateString()+" ";
            }
            txtjd.Text = Dates;
            Cal.Visible = false;
        }

        protected void Cal_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.Month == 9 && e.Day.Date.Day == 15) {
                e.Cell.Text += e.Day.Date.Day+"<br />Engineers Day";
            }
        }
    }
}