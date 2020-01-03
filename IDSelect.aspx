<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IDSelect.aspx.cs" Inherits="IDSelect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hello Welcome</h1>
            <p>&nbsp;<h2>Chose your Identity:</h2>
            <p>&nbsp;</p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Teacher" OnDataBinding="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&amp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Student" OnClick="Button2_Click" />
            </p>
        </div>
    </form>
</body>
</html>
