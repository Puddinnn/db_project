<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assi_Modify.aspx.cs" Inherits="Assi_Modify" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome Professor</h1>
            <h2>Please input the follow information:</h2>
            <p>&nbsp;</p>
            AssignmentID:<br />
            <br />
            <br />
            <asp:TextBox ID="AssignmentID" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            StudentID:<br />
            <br />
            <br />
            <asp:TextBox ID="StudentID" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Main Page" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
