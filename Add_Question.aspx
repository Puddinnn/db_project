<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Question.aspx.cs" Inherits="Add_Question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome Professor</h1>
        <h2>Now please add 5 questions in this assignment:</h2>
        <br />
        Question ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Weight"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Question"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="Q1" runat="server"></asp:TextBox>
        <asp:TextBox ID="W1" runat="server"></asp:TextBox>
        <asp:TextBox ID="Sheet1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="Q2" runat="server"></asp:TextBox>
        <asp:TextBox ID="W2" runat="server"></asp:TextBox>
        <asp:TextBox ID="Sheet2" runat="server"></asp:TextBox>
        <br />
        <br />       
        <asp:TextBox ID="Q3" runat="server"></asp:TextBox>
        <asp:TextBox ID="W3" runat="server"></asp:TextBox>
        <asp:TextBox ID="Sheet3" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="Q4" runat="server"></asp:TextBox>
        <asp:TextBox ID="W4" runat="server"></asp:TextBox>
        <asp:TextBox ID="Sheet4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="Q5" runat="server"></asp:TextBox>
        <asp:TextBox ID="W5" runat="server"></asp:TextBox>
        <asp:TextBox ID="Sheet5" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Main page" />
        <br />
    </form>
</body>
</html>
