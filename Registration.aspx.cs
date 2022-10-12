using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace Project
{
    public partial class Registration1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Demo;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            SqlCommand cmd = new SqlCommand("insert into jyothitable" + "(username,password,reenterpassword,firstname,middlename,lastname,hintquestion,hintanswer)values(@username,@password,@reenterpassword,@firstname,@middlename,@lastname,@hintquestion,@hintanswer)",con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@reenterpassword",TextBox3.Text);
            cmd.Parameters.AddWithValue("@firstname",TextBox4.Text);
            cmd.Parameters.AddWithValue("@middlename",TextBox5.Text);
            cmd.Parameters.AddWithValue("@lastname",TextBox6.Text);
            cmd.Parameters.AddWithValue("@hintquestion",DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@hintanswer",TextBox8.Text);
            cmd.ExecuteNonQuery();
            //Response.Redirect("LoginForm.aspx");
            Response.Redirect("https://localhost:44346/LoginForm.aspx");
        }
    }
}