<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="educatorAssignment.aspx.cs" Inherits="elearning_mgmt.educatorAssignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="COURSE_TITLE" DataValueField="COURSE_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_TITLE&quot; FROM &quot;EDUCATIONAL_PROGRAMS&quot;"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID,EDUCATOR_ID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                    <asp:BoundField DataField="EDUCATOR_ID" HeaderText="EDUCATOR_ID" ReadOnly="True" SortExpression="EDUCATOR_ID" />
                    <asp:BoundField DataField="EDUCATOR_NAME" HeaderText="EDUCATOR_NAME" SortExpression="EDUCATOR_NAME" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT ep.COURSE_ID, ep.COURSE_TITLE ,
       e.EDUCATOR_ID, e.EDUCATOR_NAME
FROM EDUCATIONAL_PROGRAMS ep
JOIN EDUCATOR_ASSIGNMENT ea ON ep.COURSE_ID  = ea.COURSE_ID 
JOIN EDUCATOR e ON ea.EDUCATOR_ID  = e.EDUCATOR_ID 
WHERE ea.EDUCATOR_ID  IN (
    SELECT ea1.EDUCATOR_ID 
    FROM EDUCATOR_ASSIGNMENT ea1
    GROUP BY ea1.EDUCATOR_ID 
    HAVING COUNT(DISTINCT ea1.COURSE_ID) &gt;= 2
) AND ep.COURSE_ID =  :course_id">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="course_id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
