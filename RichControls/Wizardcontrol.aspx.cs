using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RichControls
{
    public partial class Wizardcontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void wizdetails_NextButtonClick(object sender, WizardNavigationEventArgs e)
        {
            if (e.NextStepIndex==2) {
                lblname.Text = txtname.Text;
                lblage.Text = txtage.Text;
                lblgender.Text = lstgender.SelectedValue;
                lblemail.Text = txtemail.Text;
                lblcn.Text = txtcn.Text;
            }
        }

        protected void wizdetails_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            Response.Redirect("success.aspx");
        }

    }
}