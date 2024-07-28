<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="educationalPrograms.aspx.cs" Inherits="elearning_mgmt.courseView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                    <asp:BoundField DataField="COURSE_CODE" HeaderText="COURSE_CODE" SortExpression="COURSE_CODE" />
                    <asp:BoundField DataField="COURSE_TITLE" HeaderText="COURSE_TITLE" SortExpression="COURSE_TITLE" />
                </Columns>
            </asp:GridView>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID" DataSourceID="SqlDataSource1">
                <%--<EditItemTemplate>
                    COURSE_ID:
                    <asp:Label ID="COURSE_IDLabel1" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                    <br />
                    COURSE_CODE:
                    <asp:TextBox ID="COURSE_CODETextBox" runat="server" Text='<%# Bind("COURSE_CODE") %>' />
                    <br />
                    COURSE_TITLE:
                    <asp:TextBox ID="COURSE_TITLETextBox" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>--%>
                <InsertItemTemplate>
                    COURSE_ID:
                    <asp:TextBox ID="COURSE_IDTextBox" runat="server" Text='<%# Bind("COURSE_ID") %>' />
                    <br />
                    COURSE_CODE:
                    <asp:TextBox ID="COURSE_CODETextBox" runat="server" Text='<%# Bind("COURSE_CODE") %>' />
                    <br />
                    COURSE_TITLE:
                    <asp:TextBox ID="COURSE_TITLETextBox" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <%--COURSE_ID:
                    <asp:Label ID="COURSE_IDLabel" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                    <br />
                    COURSE_CODE:
                    <asp:Label ID="COURSE_CODELabel" runat="server" Text='<%# Bind("COURSE_CODE") %>' />
                    <br />
                    COURSE_TITLE:
                    <asp:Label ID="COURSE_TITLELabel" runat="server" Text='<%# Bind("COURSE_TITLE") %>' />--%>
                    <br />
                    <%--<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />--%>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EDUCATIONAL_PROGRAMS&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID" InsertCommand="INSERT INTO &quot;EDUCATIONAL_PROGRAMS&quot; (&quot;COURSE_ID&quot;, &quot;COURSE_CODE&quot;, &quot;COURSE_TITLE&quot;) VALUES (:COURSE_ID, :COURSE_CODE, :COURSE_TITLE)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;COURSE_CODE&quot;, &quot;COURSE_TITLE&quot; FROM &quot;EDUCATIONAL_PROGRAMS&quot;" UpdateCommand="UPDATE &quot;EDUCATIONAL_PROGRAMS&quot; SET &quot;COURSE_CODE&quot; = :COURSE_CODE, &quot;COURSE_TITLE&quot; = :COURSE_TITLE WHERE &quot;COURSE_ID&quot; = :COURSE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                    <asp:Parameter Name="COURSE_CODE" Type="String" />
                    <asp:Parameter Name="COURSE_TITLE" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COURSE_CODE" Type="String" />
                    <asp:Parameter Name="COURSE_TITLE" Type="String" />
                    <asp:Parameter Name="COURSE_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
