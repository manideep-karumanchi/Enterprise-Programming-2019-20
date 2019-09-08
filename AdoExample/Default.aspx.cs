using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdoExample
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                fillauthors();
            }
        }
        public void fillauthors(){
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver;");
            SqlCommand cmd = new SqlCommand("Select * from authors", con);
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read()) {
                    ListItem li = new ListItem(reader["au_fname"]+" "+reader["au_lname"],reader["au_id"].ToString());
                    lstAuthors.Items.Add(li);
                }
            }
            catch (Exception ex)
            {
                lbldetails.Text = "<b>Error Occured:" + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }
        protected void lstAuthors_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver;");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from authors where au_id='"+lstAuthors.SelectedValue+"'";
            try
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                txtid.Text = reader["au_id"].ToString();
                txtfn.Text = reader["au_fname"].ToString();
                txtln.Text = reader["au_lname"].ToString();
                txtphone.Text = reader["phone"].ToString();
                txtadd.Text = reader["address"].ToString();
                txtcity.Text = reader["city"].ToString();
                txtstate.Text = reader["state"].ToString();
                txtzip.Text = reader["zip"].ToString();
                chkcontract.Checked = (bool)reader["contract"];
            }
            catch (Exception ex) {
                lbldetails.Text = "<b>Error Occured:" + ex.Message;
            }
            finally
            {
                con.Close();
            }
        }

        protected void cmdcb_Click(object sender, EventArgs e)
        {
            txtid.Text = "";
            txtfn.Text = "";
            txtln.Text = "";
            txtphone.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtstate.Text = "";
            txtzip.Text = string.Empty;
            chkcontract.Checked = false;
        }

        protected void cmdin_Click(object sender, EventArgs e)
        {
            if (txtid.Text != "" && txtfn.Text != "" && txtln.Text != "" && txtphone.Text != "" && txtzip.Text != "")
            {
                string query = "insert into authors (au_id,au_fname,au_lname,phone,address,city,state,zip,contract) values('" + txtid.Text + "', '" + txtfn.Text + "', '" + txtln.Text + "', '" + txtphone.Text + "', '" + txtadd.Text + "', '" + txtcity.Text + "', '" + txtstate.Text + "', '" + txtzip.Text + "', " + Convert.ToInt16(chkcontract.Checked)+")";
                SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver;");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = query;
                try
                {
                    con.Open();
                    int res = cmd.ExecuteNonQuery();
                    if (res != 1)
                    {
                        lbldetails.Text = "<b>Insertion Failed.</b>";
                    }
                    else {
                        lbldetails.Text = "<b>Record Inserted.</b>";
                        fillauthors();
                        Response.Redirect("Default.aspx");
                    }
                }
                catch (Exception ex)
                {
                    lbldetails.Text = "<b>Error Occured:" + ex.Message;
                }
                finally
                {
                    con.Close();
                }   

            }
            else {
                lbldetails.Text = "Some of the mandatory textboxes contains null values.";
            }
        }

        protected void cmdub_Click(object sender, EventArgs e)
        {
            string query = "update authors set au_fname=@au_fname, au_lname=@au_lname, phone=@phone, address=@address, city=@city, state=@state, zip=@zip, contract=@contract where au_id=@au_id";
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver;");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            try
            {
                con.Open();
                cmd.Parameters.AddWithValue("@au_fname", txtfn.Text);
                cmd.Parameters.AddWithValue("@au_lname", txtln.Text);
                cmd.Parameters.AddWithValue("@phone", txtphone.Text);
                cmd.Parameters.AddWithValue("@address", txtadd.Text);
                cmd.Parameters.AddWithValue("@city", txtcity.Text);
                cmd.Parameters.AddWithValue("@state", txtstate.Text);
                cmd.Parameters.AddWithValue("@zip", txtzip.Text);
                cmd.Parameters.AddWithValue("@contract", Convert.ToInt16(chkcontract.Checked));
                cmd.Parameters.AddWithValue("@au_id", txtid.Text);
                int res = cmd.ExecuteNonQuery();
                if (res != 1)
                {
                    lbldetails.Text = "<b>Insertion Failed.</b>";
                }
                else
                {
                    lbldetails.Text = "<b>Record Inserted.</b>";
                    fillauthors();
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                lbldetails.Text = "<b>Error Occured:" + ex.Message;
            }
            finally
            {
                con.Close();
            }   

        }

        protected void cmddb_Click(object sender, EventArgs e)
        {
            string query = "delete from authors where au_id=@au_id";
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog=pubs; User Id=sa; Password=sqlserver;");
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            try
            {
                con.Open();
                cmd.Parameters.AddWithValue("@au_id", txtid.Text);
                int res = cmd.ExecuteNonQuery();
                if (res != 1)
                {
                    lbldetails.Text = "<b>Insertion Failed.</b>";
                }
                else
                {
                    lbldetails.Text = "<b>Record Inserted.</b>";
                    fillauthors();
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                lbldetails.Text = "<b>Error Occured:" + ex.Message;
            }
            finally
            {
                con.Close();
            }   
        }
    }
}