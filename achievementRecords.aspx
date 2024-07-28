<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="achievementRecords.aspx.cs" Inherits="elearning_mgmt.achievementRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ACHIEVEMENT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ACHIEVEMENT_ID" HeaderText="ACHIEVEMENT_ID" ReadOnly="True" SortExpression="ACHIEVEMENT_ID" />
                    <asp:BoundField DataField="LEARNER_ID" HeaderText="LEARNER_ID" SortExpression="LEARNER_ID" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="LESSON_ID" HeaderText="LESSON_ID" SortExpression="LESSON_ID" />
                    <asp:BoundField DataField="EDUCATOR_ID" HeaderText="EDUCATOR_ID" SortExpression="EDUCATOR_ID" />
                    <asp:BoundField DataField="LESSON_STATUS" HeaderText="LESSON_STATUS" SortExpression="LESSON_STATUS" />
                    <asp:BoundField DataField="RECENT_ACCESSED_DATE" HeaderText="RECENT_ACCESSED_DATE" SortExpression="RECENT_ACCESSED_DATE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ACHIEVEMENT_RECORDS&quot; WHERE &quot;ACHIEVEMENT_ID&quot; = :ACHIEVEMENT_ID" InsertCommand="INSERT INTO &quot;ACHIEVEMENT_RECORDS&quot; (&quot;ACHIEVEMENT_ID&quot;, &quot;LEARNER_ID&quot;, &quot;COURSE_ID&quot;, &quot;LESSON_ID&quot;, &quot;EDUCATOR_ID&quot;, &quot;LESSON_STATUS&quot;, &quot;RECENT_ACCESSED_DATE&quot;) VALUES (:ACHIEVEMENT_ID, :LEARNER_ID, :COURSE_ID, :LESSON_ID, :EDUCATOR_ID, :LESSON_STATUS, :RECENT_ACCESSED_DATE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ACHIEVEMENT_ID&quot;, &quot;LEARNER_ID&quot;, &quot;COURSE_ID&quot;, &quot;LESSON_ID&quot;, &quot;EDUCATOR_ID&quot;, &quot;LESSON_STATUS&quot;, &quot;RECENT_ACCESSED_DATE&quot; FROM &quot;ACHIEVEMENT_RECORDS&quot;" UpdateCommand="UPDATE &quot;ACHIEVEMENT_RECORDS&quot; SET &quot;LEARNER_ID&quot; = :LEARNER_ID, &quot;COURSE_ID&quot; = :COURSE_ID, &quot;LESSON_ID&quot; = :LESSON_ID, &quot;EDUCATOR_ID&quot; = :EDUCATOR_ID, &quot;LESSON_STATUS&quot; = :LESSON_STATUS, &quot;RECENT_ACCESSED_DATE&quot; = :RECENT_ACCESSED_DATE WHERE &quot;ACHIEVEMENT_ID&quot; = :ACHIEVEMENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ACHIEVEMENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ACHIEVEMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="LEARNER_ID" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="LESSON_ID" Type="Decimal" />
                    <asp:Parameter Name="EDUCATOR_ID" Type="Decimal" />
                    <asp:Parameter Name="LESSON_STATUS" Type="String" />
                    <asp:Parameter Name="RECENT_ACCESSED_DATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="LEARNER_ID" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="LESSON_ID" Type="Decimal" />
                    <asp:Parameter Name="EDUCATOR_ID" Type="Decimal" />
                    <asp:Parameter Name="LESSON_STATUS" Type="String" />
                    <asp:Parameter Name="RECENT_ACCESSED_DATE" Type="DateTime" />
                    <asp:Parameter Name="ACHIEVEMENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ACHIEVEMENT_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                ACHIEVEMENT_ID:
                <asp:Label ID="ACHIEVEMENT_IDLabel1" runat="server" Text='<%# Eval("ACHIEVEMENT_ID") %>' />
                <br />
                LEARNER_ID:
                <asp:TextBox ID="LEARNER_IDTextBox" runat="server" Text='<%# Bind("LEARNER_ID") %>' />
                <br />
                COURSE_ID:
                <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                <br />
                LESSON_ID:
                <asp:TextBox ID="LESSON_IDTextBox" runat="server" Text='<%# Bind("LESSON_ID") %>' />
                <br />
                EDUCATOR_ID:
                <asp:TextBox ID="EDUCATOR_IDTextBox" runat="server" Text='<%# Bind("EDUCATOR_ID") %>' />
                <br />
                LESSON_STATUS:
                <asp:TextBox ID="LESSON_STATUSTextBox" runat="server" Text='<%# Bind("LESSON_STATUS") %>' />
                <br />
                RECENT_ACCESSED_DATE:
                <asp:TextBox ID="RECENT_ACCESSED_DATETextBox" runat="server" Text='<%# Bind("RECENT_ACCESSED_DATE") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ACHIEVEMENT_ID:
                <asp:TextBox ID="ACHIEVEMENT_IDTextBox" runat="server" Text='<%# Bind("ACHIEVEMENT_ID") %>' />
                <br />
                LEARNER_ID:
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="LEARNER_NAME" DataValueField="LEARNER_ID" SelectedValue='<%# Bind("LEARNER_ID") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;LEARNER_ID&quot;, &quot;LEARNER_NAME&quot; FROM &quot;LEARNERS&quot;"></asp:SqlDataSource>
                <br />
                COURSE_ID:
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="COURSE_TITLE" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot;, &quot;COURSE_CODE&quot; FROM &quot;EDUCATIONAL_PROGRAMS&quot;"></asp:SqlDataSource>
                <br />
                LESSON_ID:
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="LESSON_TITLE" DataValueField="LESSON_ID" SelectedValue='<%# Bind("LESSON_ID") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;LESSON_ID&quot;, &quot;COURSE_ID&quot;, &quot;LESSON_NO&quot;, &quot;LESSON_TITLE&quot; FROM &quot;LESSONS&quot; WHERE &quot;COURSE_ID&quot; = :course_id">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="course_id" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                EDUCATOR_ID:
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="EDUCATOR_NAME" DataValueField="EDUCATOR_ID" SelectedValue='<%# Bind("EDUCATOR_ID") %>'>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EDUCATOR_ID&quot;, &quot;EDUCATOR_NAME&quot; FROM &quot;EDUCATOR&quot;"></asp:SqlDataSource>
                <br />
                <br />
                LESSON_STATUS:
                <asp:DropDownList ID="DropDownList5" runat="server" SelectedValue='<%# Bind("LESSON_STATUS") %>'>
                    <asp:ListItem Value="Completed"></asp:ListItem>
                    <asp:ListItem Value="In Progress"></asp:ListItem>
                </asp:DropDownList>
                <br />
                RECENT_ACCESSED_DATE:
                <br />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" SelectedDate='<%# Bind("RECENT_ACCESSED_DATE") %>' Width="220px">
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
               <%-- ACHIEVEMENT_ID:
                <asp:Label ID="ACHIEVEMENT_IDLabel" runat="server" Text='<%# Eval("ACHIEVEMENT_ID") %>' />
                <br />
                LEARNER_ID:
                <asp:Label ID="LEARNER_IDLabel" runat="server" Text='<%# Bind("LEARNER_ID") %>' />
                <br />
                COURSE_ID:
                <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                <br />
                LESSON_ID:
                <asp:Label ID="LESSON_IDLabel" runat="server" Text='<%# Bind("LESSON_ID") %>' />
                <br />
                EDUCATOR_ID:
                <asp:Label ID="EDUCATOR_IDLabel" runat="server" Text='<%# Bind("EDUCATOR_ID") %>' />
                <br />
                LESSON_STATUS:
                <asp:Label ID="LESSON_STATUSLabel" runat="server" Text='<%# Bind("LESSON_STATUS") %>' />
                <br />
                RECENT_ACCESSED_DATE:
                <asp:Label ID="RECENT_ACCESSED_DATELabel" runat="server" Text='<%# Bind("RECENT_ACCESSED_DATE") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />--%>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
