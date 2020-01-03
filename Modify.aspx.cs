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

public partial class Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String constr = "Data Source=.\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True";
        SqlConnection myconn = new SqlConnection(constr);
        myconn.Open();
        String sql = "UPDATE OnlineAnswer SET Grade = CASE QueID " +
            "           WHEN '" + QuesID1.Text + "' THEN '" + Grade1.Text + "'" +
            "           WHEN '" + QuesID2.Text + "' THEN '" + Grade2.Text + "'" +
            "           WHEN '" + QuesID3.Text + "' THEN '" + Grade3.Text + "'" +
            "           WHEN '" + QuesID4.Text + "' THEN '" + Grade4.Text + "'" +
            "           WHEN '" + QuesID5.Text + "' THEN '" + Grade5.Text + "'  END, SET Comment = CASE QueID " +
            "           WHEN '" + QuesID1.Text + "' THEN '" + Co1.Text + "'" +
            "           WHEN '" + QuesID2.Text + "' THEN '" + Co2.Text + "'" +
            "           WHEN '" + QuesID3.Text + "' THEN '" + Co3.Text + "'" +
            "           WHEN '" + QuesID4.Text + "' THEN '" + Co4.Text + "'" +
            "           WHEN '" + QuesID5.Text + "' THEN '" + Co5.Text + "' END  WHERE QueID IN ('" + QuesID1 + "','" + QuesID2 + "','" + QuesID3 + "','" + QuesID4 + "','" + QuesID5 + "')";
        SqlCommand cmd = new SqlCommand(sql, myconn);
        if (cmd.ExecuteNonQuery() > 0)
        {
            this.Response.Write("<script>alert('Adding Successed！')</script>");
            Response.Redirect("Tea_main.aspx");
        }
        else
        {
            this.Response.Write("<script>alert('Adding Failed！')</script>");
        }
        myconn.Close();
    }
}