<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="DatabaseCourseWork.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMPLOYEE_ID&quot;, &quot;EMPLOYEE_NAME&quot;, &quot;ADDRESS&quot;, &quot;CONTACT&quot;, &quot;DIVISION_ID&quot;) VALUES (:EMPLOYEE_ID, :EMPLOYEE_NAME, :ADDRESS, :CONTACT, :DIVISION_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;EMPLOYEE_NAME&quot; = :EMPLOYEE_NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;CONTACT&quot; = :CONTACT, &quot;DIVISION_ID&quot; = :DIVISION_ID WHERE &quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID">
    <DeleteParameters>
        <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
        <asp:Parameter Name="EMPLOYEE_NAME" Type="String" />
        <asp:Parameter Name="ADDRESS" Type="String" />
        <asp:Parameter Name="CONTACT" Type="Decimal" />
        <asp:Parameter Name="DIVISION_ID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="EMPLOYEE_NAME" Type="String" />
        <asp:Parameter Name="ADDRESS" Type="String" />
        <asp:Parameter Name="CONTACT" Type="Decimal" />
        <asp:Parameter Name="DIVISION_ID" Type="String" />
        <asp:Parameter Name="EMPLOYEE_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DIVISION_ID&quot;, &quot;DIVISION_NAME&quot; FROM &quot;DIVISION&quot;"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            EMPLOYEE_ID:
            <asp:Label ID="EMPLOYEE_IDLabel1" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />
            <br />
            EMPLOYEE_NAME:
            <asp:TextBox ID="EMPLOYEE_NAMETextBox" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
            <br />
            ADDRESS:
            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            CONTACT:
            <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
            <br />
            DIVISION_ID:
            <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            EMPLOYEE_ID:
            <asp:TextBox ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
            <br />
            EMPLOYEE_NAME:
            <asp:TextBox ID="EMPLOYEE_NAMETextBox" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
            <br />
            ADDRESS:
            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            CONTACT:
            <asp:TextBox ID="CONTACTTextBox" runat="server" Text='<%# Bind("CONTACT") %>' />
            <br />
            DIVISION_ID:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIVISION_NAME" DataValueField="DIVISION_ID" SelectedValue='<%# Bind("DIVISION_ID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            EMPLOYEE_ID:
            <asp:Label ID="EMPLOYEE_IDLabel" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />
            <br />
            EMPLOYEE_NAME:
            <asp:Label ID="EMPLOYEE_NAMELabel" runat="server" Text='<%# Bind("EMPLOYEE_NAME") %>' />
            <br />
            ADDRESS:
            <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
            <br />
            CONTACT:
            <asp:Label ID="CONTACTLabel" runat="server" Text='<%# Bind("CONTACT") %>' />
            <br />
            DIVISION_ID:
            <asp:Label ID="DIVISION_IDLabel" runat="server" Text='<%# Bind("DIVISION_ID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
            <asp:BoundField DataField="EMPLOYEE_NAME" HeaderText="EMPLOYEE_NAME" SortExpression="EMPLOYEE_NAME" />
            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
            <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
            <asp:TemplateField HeaderText="DIVISION_NAME">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIVISION_NAME" DataValueField="DIVISION_ID" SelectedValue='<%# Bind("DIVISION_ID") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</p>
</asp:Content>
