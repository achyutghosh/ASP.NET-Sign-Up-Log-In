using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if(Request.Cookies["EMAIL"] !=null && Request.Cookies["PASSWORD"] != null) {
                TextBox1.Text = Request.Cookies["EMAIL"].Value;
                TextBox2.Attributes["value"] = Request.Cookies["PASSWORD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = TextBox1.Text;
        string pass = TextBox2.Text;

        String fetch_sql = "select * from Customer where email =('" + email + "') and password =('" + pass + "')";

        string CS = ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand(fetch_sql, con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["EMAIL"].Value = email;
                    Response.Cookies["PASSWORD"].Value = pass;

                    Response.Cookies["EMAIL"].Expires = DateTime.Now.AddDays(5);
                    Response.Cookies["PASSWORD"].Expires = DateTime.Now.AddDays(5);

                    Session["EMAIL"] = email;
                    Response.Redirect("Order.aspx");
                }
                else
                {
                    Response.Cookies["EMAIL"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PASSWORD"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["EMAIL"] = email;
                Response.Redirect("Order.aspx");
            }
            else
            {
                Label1.Text = "Invalid email or password!";
            }
        }
    }
}