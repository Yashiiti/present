using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1;
        con1 = new SqlConnection();
        con1.ConnectionString = WebConfigurationManager.ConnectionStrings["caasps"].ConnectionString;

        con1.Open();

        SqlCommand cmd1;
        cmd1 = new SqlCommand();
        cmd1.CommandText = "Insert into user_log(user_name,date) values(@user_name,@date)";
        //cmd1.CommandText = "Insert into user_log(date) values(@date)";
        cmd1.CommandType = CommandType.Text;
        cmd1.Connection = con1;
        cmd1.Parameters.AddWithValue("user_name", TextBox1.Text);
        cmd1.Parameters.AddWithValue("date", DateTime.Now);
        cmd1.ExecuteNonQuery();
        //con1.Close();



        SqlCommand cmd;
        cmd = new SqlCommand();
        cmd.CommandText = "SELECT uname FROM users where uname = @uname and pwd = @pwd";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con1;
        cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);
        object isuser = cmd.ExecuteScalar();
       con1.Close();
        if ((Convert.ToString(isuser) != null) && (Convert.ToString(isuser) != ""))
        {
            Response.Redirect("ppm1.aspx");
        }
        else
        {
            Label3.Text = "Access Denied ! <br> Please enter correct User Name and Password. <br> Mail at shashi29@yahoo.com to obtain User Name and Password";
        }

        

    }

   
}

