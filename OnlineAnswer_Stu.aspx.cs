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

public partial class OnlineAnswer_Stu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string passedID = Session["name"].ToString();
        String constr = "Data Source=.\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        SqlConnection myconn = new SqlConnection(constr);
        myconn.Open();
        String sql = "INSERT OnlineAnswer(QueID, StuID, AnsSheet) VALUES" +
            " ( '" + QueID1.Text + "','" + passedID + "','" + Answer1.Text + "')," +
            " ( '" + QueID2.Text + "','" + passedID + "','" + Answer2.Text + "')," +
            " ( '" + QueID3.Text + "','" + passedID + "','" + Answer3.Text + "')," +
            " ( '" + QueID4.Text + "','" + passedID + "','" + Answer4.Text + "')," +
            " ( '" + QueID5.Text + "','" + passedID + "','" + Answer5.Text + "')";
        SqlCommand cmd = new SqlCommand(sql, myconn);
        if (cmd.ExecuteNonQuery() > 0)
        {
            this.Response.Write("<script>alert('Answer upload succeed！')</script>");
        }
        else
        {
            this.Response.Write("<script>alert('Answer uploade failed！')</script>");
        }
        myconn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("IDSelect.aspx");
    }
}