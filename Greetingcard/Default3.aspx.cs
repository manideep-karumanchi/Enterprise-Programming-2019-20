using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void cmdub_Click(object sender, EventArgs e)
    {
        pnlgc.BackColor = ColorTranslator.FromHtml(dlbc.SelectedItem.Text);
        lblgt.Font.Name = dlf.SelectedItem.Text;
        lblgt.Text = txtgt.Text;
        if(Int32.Parse(txtfs.Text)>0)
            lblgt.Font.Size = Int32.Parse(txtfs.Text);
        if (chkdi.Checked)
        {
            gimg.Visible = true;
        }
        else {
            gimg.Visible = false;
        }
        BorderStyle bs=BorderStyle.None;
        /*if(optbs.SelectedValue.Equals("BorderStyle.None")){
            bs=(BorderStyle)((int)BorderStyle.None);
        }
        else if(optbs.SelectedValue.Equals("BorderStyle.Dotted")){
            bs=(BorderStyle)((int)BorderStyle.Dotted);
        }
        else if(optbs.SelectedValue.Equals("BorderStyle.Double")){
            bs=(BorderStyle)((int)BorderStyle.Double);
        }*/
        TypeConverter c=TypeDescriptor.GetConverter(typeof(BorderStyle));
        bs = (BorderStyle)c.ConvertFromString(optbs.SelectedValue);
        pnlgc.BorderStyle = bs;

    }
}