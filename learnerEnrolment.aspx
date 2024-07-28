<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learnerEnrolment.aspx.cs" Inherits="elearning_mgmt.learnerEnrolment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="LEARNER_NAME" DataValueField="LEARNER_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;LEARNER_ID&quot;, &quot;LEARNER_NAME&quot; FROM &quot;LEARNERS&quot;"></asp:SqlDataSource>
            <br />
            Course:<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LEARNER_ID,COURSE_ID" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="LEARNER_ID" HeaderText="LEARNER_ID" ReadOnly="True" SortExpression="LEARNER_ID" />
                    <asp:BoundField DataField="LEARNER_NAME" HeaderText="LEARNER_NAME" SortExpression="LEARNER_NAME" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="BIRTH_DATE" HeaderText="BIRTH_DATE" SortExpression="BIRTH_DATE" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="REGION" HeaderText="REGION" SortExpression="REGION" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                    <asp:BoundField DataField="SIGN_UP_DATE" HeaderText="SIGN_UP_DATE" SortExpression="SIGN_UP_DATE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT l.LEARNER_ID, l.LEARNER_NAME, l.CONTACT, l.BIRTH_DATE, l.EMAIL, l.REGION, ep.COURSE_ID, ep.COURSE_TITLE, r.SIGN_UP_DATE
FROM LEARNERS l JOIN REGISTRATION r ON l.LEARNER_ID = r.LEARNER_ID 
JOIN EDUCATIONAL_PROGRAMS ep ON r.COURSE_ID = ep.COURSE_ID 
WHERE l.LEARNER_ID = :learner">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="learner" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
