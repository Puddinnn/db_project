<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OnlineAnswer_Stu.aspx.cs" Inherits="OnlineAnswer_Stu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hello Student</h1>
            <h2>Here we have five questions<br />
            Please answer question after the question:</h2><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QuestionID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Assignment" HeaderText="Assignment" SortExpression="Assignment" />
                    <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" ReadOnly="True" SortExpression="QuestionID" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="Question" HeaderText="Question" SortExpression="Question" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString2 %>" SelectCommand="SELECT AssiID AS Assignment, QID AS QuestionID, Weight1 AS Weight, QueSheet AS Question
FROM Question"></asp:SqlDataSource>
            <br />
            QuestionID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Answer<br />
            <asp:TextBox ID="QueID1" runat="server"></asp:TextBox>
            :<asp:TextBox ID="Answer1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="QueID2" runat="server"></asp:TextBox>
            :<asp:TextBox ID="Answer2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="QueID3" runat="server"></asp:TextBox>
            :<asp:TextBox ID="Answer3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="QueID4" runat="server"></asp:TextBox>
            :<asp:TextBox ID="Answer4" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="QueID5" runat="server"></asp:TextBox>
            :<asp:TextBox ID="Answer5" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Main Page" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
