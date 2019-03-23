using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing; 

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox1.Text;
        string email = TextBox2.Text;
        string mob = TextBox3.Text;
        string add = TextBox4.Text;
        string pass = TextBox5.Text;
        string con_pass = TextBox6.Text;

        string insert_sql = "insert into Customer values('" + name + "','" + email + "','" + mob + "','" + add + "','" + pass + "')";

        if (name != "" && email != "" && mob != "" && add != "" && pass != "") {

            if (pass == con_pass) {
                string CS = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand(insert_sql, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "Password does not match";
            }
        }
        else
        {
            Label1.ForeColor = Color.Red;
            Label1.Text = "All fields are mandatory!";
        }
    }
}