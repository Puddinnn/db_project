<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stu_main.aspx.cs" Inherits="Stu_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome Student</h1>
            <h2>Please select your operation:</h2><br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Answer Question" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="GPA" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
