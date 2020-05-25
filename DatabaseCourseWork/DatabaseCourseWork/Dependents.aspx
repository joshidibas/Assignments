<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dependents.aspx.cs" Inherits="DatabaseCourseWork.Dependents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPENDENT&quot; WHERE &quot;DEPENDENT_ID&quot; = :DEPENDENT_ID" InsertCommand="INSERT INTO &quot;DEPENDENT&quot; (&quot;DEPENDENT_ID&quot;, &quot;DEPENDENT_NAME&quot;, &quot;EMPLOYEE_ID&quot;) VALUES (:DEPENDENT_ID, :DEPENDENT_NAME, :EMPLOYEE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPENDENT&quot;" UpdateCommand="UPDATE &quot;DEPENDENT&quot; SET &quot;DEPENDENT_NAME&quot; = :DEPENDENT_NAME, &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID WHERE &quot;DEPENDENT_ID&quot; = :DEPENDENT_ID">
        <DeleteParameters>
            <asp:Parameter Name="DEPENDENT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPENDENT_ID" Type="String" />
            <asp:Parameter Name="DEPENDENT_NAME" Type="String" />
            <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPENDENT_NAME" Type="String" />
            <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
            <asp:Parameter Name="DEPENDENT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;EMPLOYEE_NAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPENDENT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            DEPENDENT_ID:
            <asp:Label ID="DEPENDENT_IDLabel1" runat="server" Text='<%# Eval("DEPENDENT_ID") %>' />
            <br />
            DEPENDENT_NAME:
            <asp:TextBox ID="DEPENDENT_NAMETextBox" runat="server" Text='<%# Bind("DEPENDENT_NAME") %>' />
            <br />
            EMPLOYEE_ID:
            <asp:TextBox ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            DEPENDENT_ID:
            <asp:TextBox ID="DEPENDENT_IDTextBox" runat="server" Text='<%# Bind("DEPENDENT_ID") %>' />
            <br />
            DEPENDENT_NAME:
            <asp:TextBox ID="DEPENDENT_NAMETextBox" runat="server" Text='<%# Bind("DEPENDENT_NAME") %>' />
            <br />
            EMPLOYEE_NAME<br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            DEPENDENT_ID:
            <asp:Label ID="DEPENDENT_IDLabel" runat="server" Text='<%# Eval("DEPENDENT_ID") %>' />
            <br />
            DEPENDENT_NAME:
            <asp:Label ID="DEPENDENT_NAMELabel" runat="server" Text='<%# Bind("DEPENDENT_NAME") %>' />
            <br />
            EMPLOYEE_ID:
            <asp:Label ID="EMPLOYEE_IDLabel" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPENDENT_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DEPENDENT_ID" HeaderText="DEPENDENT_ID" ReadOnly="True" SortExpression="DEPENDENT_ID" />
            <asp:BoundField DataField="DEPENDENT_NAME" HeaderText="DEPENDENT_NAME" SortExpression="DEPENDENT_NAME" />
            <asp:TemplateField HeaderText="EMPLOYEE_NAME">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
