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

public partial class StuLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string passID;
        //passID = "OnlineAnswer.aspx?text1=" + loginId_Stu.Text;
        Session["name"] = loginId_Stu.Text;
        string userID = loginId_Stu.Text;
        string password = Pwd_Stu.Text;
        SqlConnection con = new SqlConnection("Server=(local); Data Source=.\\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("SELECT StuPwd FROM StuID WHERE StuID='" + userID + "'");
        cmd.Connection = con;
        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            string dbpassword = reader.ToString();
            //    Response.Write(dbpassword + "1111"); 
            if (password == "111")
            {
                Response.Redirect("Stu_main.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong password!')</script>");
            }
        }

        else
        {
            Response.Write("<script>alert('ID is not exist')</script>");
        }
        con.Close();
    }

}