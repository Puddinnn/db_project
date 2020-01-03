<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuLogin.aspx.cs" Inherits="StuLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <h1>Welcome Student</h1></p>
        <p>
            <h2>Please input your ID &amp; Password</h2>
        <p>&nbsp;</p></p>
        <p>
            ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="loginId_Stu" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            Password:&nbsp;
            <asp:TextBox ID="Pwd_Stu" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
