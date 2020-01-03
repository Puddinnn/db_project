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
        string passedvalue = Session["ID"].ToString();
        String constr = "Data Source=.\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        SqlConnection myconn = new SqlConnection(constr);
        myconn.Open();
        String sql = "INSERT Question(AssiID, QID, Weight1, QueSheet) VALUES " +
            "('" + Q1.Text + "', '1" + passedvalue + "','" + W1.Text + "','" + Sheet1.Text + "')," +
            "('" + Q2.Text + "', '1" + passedvalue + "','" + W2.Text + "','" + Sheet2.Text + "')," +
            "('" + Q3.Text + "', '1" + passedvalue + "','" + W3.Text + "','" + Sheet3.Text + "')," +
            "('" + Q4.Text + "', '1" + passedvalue + "','" + W4.Text + "','" + Sheet4.Text + "')," +
            "('" + Q5.Text + "', '1" + passedvalue + "','" + W5.Text + "','" + Sheet5.Text + "'),";
        SqlCommand cmd = new SqlCommand(sql, myconn);
        if (cmd.ExecuteNonQuery() > 0)
        {
            this.Response.Write("<script>alert('Adding succeed！')</script>");
            Response.Redirect("IDSelect.aspx");
        }
        else
        {
            this.Response.Write("<script>alert('Adding Failed！')</script>");
        }
        myconn.Close();
    }
}