<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learnerView.aspx.cs" Inherits="elearning_mgmt.studentView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LEARNER_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="LEARNER_ID" HeaderText="LEARNER_ID" ReadOnly="True" SortExpression="LEARNER_ID" />
                    <asp:BoundField DataField="LEARNER_NAME" HeaderText="LEARNER_NAME" SortExpression="LEARNER_NAME" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="BIRTH_DATE" HeaderText="BIRTH_DATE" SortExpression="BIRTH_DATE" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="REGION" HeaderText="REGION" SortExpression="REGION" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;LEARNERS&quot; WHERE &quot;LEARNER_ID&quot; = :LEARNER_ID" InsertCommand="INSERT INTO &quot;LEARNERS&quot; (&quot;LEARNER_ID&quot;, &quot;LEARNER_NAME&quot;, &quot;CONTACT&quot;, &quot;BIRTH_DATE&quot;, &quot;EMAIL&quot;, &quot;REGION&quot;) VALUES (:LEARNER_ID, :LEARNER_NAME, :CONTACT, :BIRTH_DATE, :EMAIL, :REGION)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;LEARNER_ID&quot;, &quot;LEARNER_NAME&quot;, &quot;CONTACT&quot;, &quot;BIRTH_DATE&quot;, &quot;EMAIL&quot;, &quot;REGION&quot; FROM &quot;LEARNERS&quot;" UpdateCommand="UPDATE &quot;LEARNERS&quot; SET &quot;LEARNER_NAME&quot; = :LEARNER_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;BIRTH_DATE&quot; = :BIRTH_DATE, &quot;EMAIL&quot; = :EMAIL, &quot;REGION&quot; = :REGION WHERE &quot;LEARNER_ID&quot; = :LEARNER_ID">
                <DeleteParameters>
                    <asp:Parameter Name="LEARNER_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="LEARNER_ID" Type="Decimal" />
                    <asp:Parameter Name="LEARNER_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="BIRTH_DATE" Type="DateTime" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="REGION" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LEARNER_NAME" Type="String" />
                    <asp:Parameter Name="CONTACT" Type="Decimal" />
                    <asp:Parameter Name="BIRTH_DATE" Type="DateTime" />
                    <asp:Parameter Name="EMAIL" Type="String" />
                    <asp:Parameter Name="REGION" Type="String" />
                    <asp:Parameter Name="LEARNER_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="LEARNER_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                LEARNER_ID:
                <asp:Label ID="LEARNER_IDLabel1" runat="server" Text='<%# Eval("LEARNER_ID") %>' />
                <br />
                LEARNER_NAME:
                <asp:TextBox ID="LEARNER_NAMETextBox" runat="server" Text='<%# Bind("LEARNER_NAME") %>' />
                <br />
                CONTACT:
                <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                <br />
                BIRTH_DATE:
                <asp:TextBox ID="BIRTH_DATETextBox" runat="server" Text='<%# Bind("BIRTH_DATE") %>' />
                <br />
                EMAIL:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                REGION:
                <asp:TextBox ID="REGIONTextBox" runat="server" Text='<%# Bind("REGION") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                LEARNER_ID:
                <asp:TextBox ID="LEARNER_IDTextBox" runat="server" Text='<%# Bind("LEARNER_ID") %>' />
                <br />
                LEARNER_NAME:
                <asp:TextBox ID="LEARNER_NAMETextBox" runat="server" Text='<%# Bind("LEARNER_NAME") %>' />
                <br />
                CONTACT:
                <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
                <br />
                BIRTH_DATE:
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" SelectedDate='<%# Bind("BIRTH_DATE") %>' Width="220px">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                <br />
                EMAIL:
                <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                REGION:
                <asp:TextBox ID="REGIONTextBox" runat="server" Text='<%# Bind("REGION") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <%--LEARNER_ID:
                <asp:Label ID="LEARNER_IDLabel" runat="server" Text='<%# Eval("LEARNER_ID") %>' />
                <br />
                LEARNER_NAME:
                <asp:Label ID="LEARNER_NAMELabel" runat="server" Text='<%# Bind("LEARNER_NAME") %>' />
                <br />
                CONTACT:
                <asp:Label ID="CONTACTLabel" runat="server" Text='<%# Bind("CONTACT") %>' />
                <br />
                BIRTH_DATE:
                <asp:Label ID="BIRTH_DATELabel" runat="server" Text='<%# Bind("BIRTH_DATE") %>' />
                <br />
                EMAIL:
                <asp:Label ID="EMAILLabel" runat="server" Text='<%# Bind("EMAIL") %>' />
                <br />
                REGION:
                <asp:Label ID="REGIONLabel" runat="server" Text='<%# Bind("REGION") %>' />--%>
                <br />
                <%--<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />--%>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
