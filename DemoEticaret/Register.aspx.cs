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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("server =(localdb)\\MSSQLLocalDB; database=DemoETicaret;integrated security = true;");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Register"+ "(Fname,Lname,Email,Gender,Address,Phone,Password)" +
                " values(@Fname,@Lname,@Email,@Gender,@Address,@Phone,@Password)",con);

            cmd.Parameters.AddWithValue("@Fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Phone", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox6.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Kayıt Başarılı";
            Response.Redirect("Login.aspx");
        }
    }
}