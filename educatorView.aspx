<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="educatorView.aspx.cs" Inherits="elearning_mgmt.educatorView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EDUCATOR_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="EDUCATOR_ID" HeaderText="EDUCATOR_ID" ReadOnly="True" SortExpression="EDUCATOR_ID" />
                    <asp:BoundField DataField="EDUCATOR_NAME" HeaderText="EDUCATOR_NAME" SortExpression="EDUCATOR_NAME" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EDUCATOR&quot; WHERE &quot;EDUCATOR_ID&quot; = :EDUCATOR_ID" InsertCommand="INSERT INTO &quot;EDUCATOR&quot; (&quot;EDUCATOR_ID&quot;, &quot;EDUCATOR_NAME&quot;) VALUES (:EDUCATOR_ID, :EDUCATOR_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EDUCATOR_ID&quot;, &quot;EDUCATOR_NAME&quot; FROM &quot;EDUCATOR&quot;" UpdateCommand="UPDATE &quot;EDUCATOR&quot; SET &quot;EDUCATOR_NAME&quot; = :EDUCATOR_NAME WHERE &quot;EDUCATOR_ID&quot; = :EDUCATOR_ID">
                <DeleteParameters>
                    <asp:Parameter Name="EDUCATOR_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EDUCATOR_ID" Type="Decimal" />
                    <asp:Parameter Name="EDUCATOR_NAME" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EDUCATOR_NAME" Type="String" />
                    <asp:Parameter Name="EDUCATOR_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="EDUCATOR_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                EDUCATOR_ID:
                <asp:Label ID="EDUCATOR_IDLabel1" runat="server" Text='<%# Eval("EDUCATOR_ID") %>' />
                <br />
                EDUCATOR_NAME:
                <asp:TextBox ID="EDUCATOR_NAMETextBox" runat="server" Text='<%# Bind("EDUCATOR_NAME") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                EDUCATOR_ID:
                <asp:TextBox ID="EDUCATOR_IDTextBox" runat="server" Text='<%# Bind("EDUCATOR_ID") %>' />
                <br />
                EDUCATOR_NAME:
                <asp:TextBox ID="EDUCATOR_NAMETextBox" runat="server" Text='<%# Bind("EDUCATOR_NAME") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <%--EDUCATOR_ID:
                <asp:Label ID="EDUCATOR_IDLabel" runat="server" Text='<%# Eval("EDUCATOR_ID") %>' />
                <br />
                EDUCATOR_NAME:
                <asp:Label ID="EDUCATOR_NAMELabel" runat="server" Text='<%# Bind("EDUCATOR_NAME") %>' />--%>
                <br />
                <%--<asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />--%>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
