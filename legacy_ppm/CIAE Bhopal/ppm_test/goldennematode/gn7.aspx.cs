using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class lb7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ppmConnectionString"].ConnectionString;

        //  con1.Open();
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "SELECT wt FROM ppm_table WHERE dis_id = 7 AND q_level = 7 and q_option=" + "'" + RadioButtonList1.SelectedItem.Text + "'";

        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        object a = cmd.ExecuteScalar();

        TextBox1.Text = Convert.ToString(a);



        con.Close();
        int x, y, z;
        x = Convert.ToInt32(TextBox1.Text);
        y = Convert.ToInt32(Session["Page6"]);
        z = (x + y)/7;


        TextBox1.Text = Convert.ToString(z);

        Session["page7"] = Convert.ToInt32(TextBox1.Text);
        Label1.Text = "The disease identified is GOLDEN NEMATODE with confidance peercent of:";

        TextBox1.Visible = true;
        Label1.Visible = true;
    }
}
