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

public partial class Add_Question : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["ID"] = TextBox1.Text;
        String constr = "Data Source=.\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        SqlConnection myconn = new SqlConnection(constr);
        myconn.Open();
        String sql = "INSERT Assignment(AID, CourseID, Assi_Name) VALUES ('" + TextBox1.Text + "', 'CS101', 'Assignment" + TextBox1.Text +" ')";
        SqlCommand cmd = new SqlCommand(sql, myconn);
        if (cmd.ExecuteNonQuery() > 0)
        {
            this.Response.Write("<script>alert('Adding Succeed！')</script>");
            Response.Redirect("Add_Question.aspx");
        }
        else
        {
            this.Response.Write("<script>alert('Adding Failed！')</script>");
        }
        myconn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tea_main.aspx");
    }
}