using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace DemoEticaret
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //LinkButton1.Visible = false;
            //HyperLink1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TextBox1.Text == "ga@gmail.com" & TextBox2.Text == "12345"
            SqlConnection con = new SqlConnection("server =(localdb)\\MSSQLLocalDB; database=DemoETicaret; integrated security = true;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register where Email='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (TextBox1.Text == "admin@gmail.com" & TextBox2.Text == "1234")
            {
                Session["admin"] = TextBox1.Text;
                Response.Redirect("AdminHome.aspx");
                Label1.Text = "Admin Girişi Başarılı";
                //Label1.ForeColor = System.Drawing.Color.DarkGreen;
                //LinkButton1.Visible = true;
                //HyperLink1.Visible = true;
                //Response.Redirect("AdminHome.aspx");
            }
            else if(dt.Rows.Count == 1)
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
                //LinkButton1.Visible = false;
                //HyperLink1.Visible = true;
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Bilgileri kontrol edin";
            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddProduct.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}