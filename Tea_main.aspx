<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tea_main.aspx.cs" Inherits="Tea_main" %>

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
            <h2>Select Your operation:</h2>
            <p>&nbsp;</p>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add student" OnClick="Button1_Click" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button2" runat="server" Text="Modify Assignment" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" Text="Add Assignment" OnClick="Button3_Click" />
        </div>
    </form>
</body>
</html>
