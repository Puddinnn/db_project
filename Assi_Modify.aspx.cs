using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Assi_Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["assID"] = AssignmentID.Text;
        Session["stuID"] = StudentID.Text;
        Response.Redirect("Modify.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("IDSelect.aspx");
    }
}