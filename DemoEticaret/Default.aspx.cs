using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DemoEticaret
{
    public partial class Default1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source =(localdb)\\MSSQLLocalDB; Initial Catalog=RecordDB; Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["addproduct"] = "false";

            if(Session["username"] != null)
            {
                Label4.Text = "Giriş yapıldı " + Session["username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label4.Text = " Giriş yapınız";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
            if (!IsPostBack)
            {
                Drp_ProductCategory();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
            Label4.Text = "Çıkış başarılı";
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB; Initial Catalog=RecordDB; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("select * from Product1 where (Pname like '%"+TextBox1.Text+"%') or (ProductId like '%"+TextBox1.Text+"%')",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = "true";
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        public void Drp_ProductCategory()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Category1", con);
            ProductCategories.DataSource = cmd.ExecuteReader();
            ProductCategories.DataTextField = "CategoryName";
            ProductCategories.DataValueField = "CategoryID";
            ProductCategories.DataBind();
            ProductCategories.Items.Insert(0, "Kategori");
            con.Close();
        }

        protected void ProductCategories_SelectIndexChanged(object sender, EventArgs e)
        {
            string strQuery = "";
            string selectedProduct = ProductCategories.SelectedItem.Text;
            if (selectedProduct == "Product Category")
            {
                strQuery = "";
            }
            else
            {
                strQuery = "where Pcategory ='" + selectedProduct + "' ";
            }

            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 " + strQuery + " ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            try
            {
                if (selectedProduct == dt.Rows[0][6].ToString())
                {

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Bu kategoride ürün bulunamadı')</script>");
            }
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}