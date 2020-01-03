<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="Modify" %>

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
            <h2>Please modify the homework:</h2><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="QuestionID" HeaderText="QuestionID" SortExpression="QuestionID" />
                    <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
                    <asp:BoundField DataField="Answer" HeaderText="Answer" SortExpression="Answer" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString4 %>" SelectCommand="SELECT QueID AS QuestionID, StuID AS StudentID, AnsSheet AS Answer FROM OnlineAnswer"></asp:SqlDataSource>
            <h3>Please Give your grade and comments to each question:</h3>
            QuestionID:
            <asp:TextBox ID="QuesID1" runat="server"></asp:TextBox>
            <br />
            Grade:&nbsp;&nbsp; <asp:TextBox ID="Grade1" runat="server"></asp:TextBox>
            <br />
            Comments:<asp:TextBox ID="Co1" runat="server"></asp:TextBox>
            <br />
            <br />
            QuestionID:
            <asp:TextBox ID="QuesID2" runat="server"></asp:TextBox>
            <br />
            Grade:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Grade2" runat="server"></asp:TextBox>
            <br />
            Comments:<asp:TextBox ID="Co2" runat="server"></asp:TextBox>
            <br />
            <br />
            QuestionID:
            <asp:TextBox ID="QuesID3" runat="server"></asp:TextBox>
            <br />
            Grade:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Grade3" runat="server"></asp:TextBox>
            <br />
            Comments:<asp:TextBox ID="Co3" runat="server"></asp:TextBox>
            <br />
            <br />
            QuestionID:
            <asp:TextBox ID="QuesID4" runat="server"></asp:TextBox>
            <br />
            Grade:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Grade4" runat="server"></asp:TextBox>
            <br />
            Comments:<asp:TextBox ID="Co4" runat="server"></asp:TextBox>
            <br />
            <br />
            QuestionID:
            <asp:TextBox ID="QuesID5" runat="server"></asp:TextBox>
            <br />
            Grade:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Grade5" runat="server"></asp:TextBox>
            <br />
            Comments:<asp:TextBox ID="Co5" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Main page" />
            <br />
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
