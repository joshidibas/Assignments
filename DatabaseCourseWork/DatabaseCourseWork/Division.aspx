<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Division.aspx.cs" Inherits="DatabaseCourseWork.Division" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DIVISION&quot; WHERE &quot;DIVISION_ID&quot; = :DIVISION_ID" InsertCommand="INSERT INTO &quot;DIVISION&quot; (&quot;DIVISION_ID&quot;, &quot;DIVISION_NAME&quot;, &quot;DIVISION_MANAGER&quot;) VALUES (:DIVISION_ID, :DIVISION_NAME, :DIVISION_MANAGER)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DIVISION&quot;" UpdateCommand="UPDATE &quot;DIVISION&quot; SET &quot;DIVISION_NAME&quot; = :DIVISION_NAME, &quot;DIVISION_MANAGER&quot; = :DIVISION_MANAGER WHERE &quot;DIVISION_ID&quot; = :DIVISION_ID">
        <DeleteParameters>
            <asp:Parameter Name="DIVISION_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DIVISION_ID" Type="String" />
            <asp:Parameter Name="DIVISION_NAME" Type="String" />
            <asp:Parameter Name="DIVISION_MANAGER" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DIVISION_NAME" Type="String" />
            <asp:Parameter Name="DIVISION_MANAGER" Type="String" />
            <asp:Parameter Name="DIVISION_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;EMPLOYEE_NAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DIVISION_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            DIVISION_ID:
            <asp:Label ID="DIVISION_IDLabel1" runat="server" Text='<%# Eval("DIVISION_ID") %>' />
            <br />
            DIVISION_NAME:
            <asp:TextBox ID="DIVISION_NAMETextBox" runat="server" Text='<%# Bind("DIVISION_NAME") %>' />
            <br />
            DIVISION_MANAGER:
            <asp:TextBox ID="DIVISION_MANAGERTextBox" runat="server" Text='<%# Bind("DIVISION_MANAGER") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            DIVISION_ID:
            <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' />
            <br />
            DIVISION_NAME:
            <asp:TextBox ID="DIVISION_NAMETextBox" runat="server" Text='<%# Bind("DIVISION_NAME") %>' />
            <br />
            DIVISION_MANAGER:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("DIVISION_MANAGER") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            DIVISION_ID:
            <asp:Label ID="DIVISION_IDLabel" runat="server" Text='<%# Eval("DIVISION_ID") %>' />
            <br />
            DIVISION_NAME:
            <asp:Label ID="DIVISION_NAMELabel" runat="server" Text='<%# Bind("DIVISION_NAME") %>' />
            <br />
            DIVISION_MANAGER:
            <asp:Label ID="DIVISION_MANAGERLabel" runat="server" Text='<%# Bind("DIVISION_MANAGER") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DIVISION_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DIVISION_ID" HeaderText="DIVISION_ID" ReadOnly="True" SortExpression="DIVISION_ID" />
            <asp:BoundField DataField="DIVISION_NAME" HeaderText="DIVISION_NAME" SortExpression="DIVISION_NAME" />
            <asp:TemplateField HeaderText="MANAGER_NAME">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("DIVISION_MANAGER") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
