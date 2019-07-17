using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListControls
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                chkpl.Items.Add("C++");
                blpl.Items.Add("C");
                blpl.Items.Add("C++");
                blpl.Items.Add("C#");
                blpl.Items.Add("Java");
            }
        }

        protected void ddlpl_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblddl.Text = ddlpl.SelectedItem.Text;
        }

        protected void lstpl_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbllst.Text = lstpl.SelectedItem.Text;
        }

        protected void chkpl_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblchk.Text = "";
            foreach (ListItem item in chkpl.Items) {
                if (item.Selected)
                    lblchk.Text += "<br />" + item.Text;
            }
            
        }

        protected void radiopl_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblradio.Text = radiopl.SelectedItem.Text;
        }

        protected void blpl_Click(object sender, BulletedListEventArgs e)
        {
            lblbl.Text = blpl.Items[e.Index].Text;
        }

       
    }
}