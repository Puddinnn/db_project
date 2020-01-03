using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Stu_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String constr = "Data Source=.\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        SqlConnection myconn = new SqlConnection(constr);
        myconn.Open();
        String sql = "INSERT INTO StuID(StuID, StuPwd,StuName, StuEmailAddress) VALUES (" + TextBox1.Text + ", '" + TextBox2.Text + "','" + TextBox3.Text + "', '" + TextBox4.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, myconn);
        if (cmd.ExecuteNonQuery() > 0)
        {
            this.Response.Write("<script>alert('Adding Succeed！')</script>");

        }
        else
        {
            this.Response.Write("<script>alert('Adding Failed！')</script>");
        }
        myconn.Close();
        Response.Redirect("Tea_main.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tea_main.aspx");
    }
}