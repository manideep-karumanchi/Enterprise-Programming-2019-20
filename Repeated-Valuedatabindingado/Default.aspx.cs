using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Repeated_Valuedatabindingado
{
    public partial class Default : System.Web.UI.Page
    {
        String cs = WebConfigurationManager.ConnectionStrings["NWndcs"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con = new SqlConnection(cs);
                cmd = new SqlCommand("select ProductID, ProductName from products", con);
                con.Open();
                reader = cmd.ExecuteReader();
                lstproducts.DataSource = reader;
                lstproducts.DataTextField = "ProductName";
                lstproducts.DataValueField = "ProductID";
                lstproducts.DataBind();
                cmd = new SqlCommand("select CategoryID, CategoryName from Categories", con);
                reader.Close();
                reader = cmd.ExecuteReader();
                lstcat.DataSource = reader;
                lstcat.DataTextField = "CategoryName";
                lstcat.DataValueField = "CategoryID";
                lstcat.DataBind();
                reader.Close();
                con.Close();
            }
        }

        protected void lstproducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            lstcat.SelectedIndex = -1;
            int productID = Int32.Parse(lstproducts.SelectedItem.Value);
            con = new SqlConnection(cs);
            cmd = new SqlCommand("SELECT ProductName, QuantityPerUnit, " +
                 "CategoryName FROM Products INNER JOIN Categories ON " +
                 "Categories.CategoryID=Products.CategoryID " +
                 "WHERE ProductID="+productID, con);
            con.Open();
            reader = cmd.ExecuteReader();
            reader.Read();
            lblproduct.Text = reader["ProductName"].ToString();
            lblqty.Text = reader["QuantityPerUnit"].ToString();
            lblcat.Text = reader["CategoryName"].ToString();
            lstcat.Items.FindByText(lblcat.Text).Selected = true;
        }

        protected void cmdupdate_Click(object sender, EventArgs e)
        {
            int CategoryID = Int32.Parse(lstcat.SelectedItem.Value);
            int ProductID = Int32.Parse(lstproducts.SelectedItem.Value);
            con = new SqlConnection(cs);
            cmd = new SqlCommand("update products set categoryid="+CategoryID+" where productID="+ProductID, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            
        }
    }
}