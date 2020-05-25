<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectScedule.aspx.cs" Inherits="DatabaseCourseWork.ProjectScedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECTTASK&quot; WHERE (&quot;PROJECT_ID&quot; = :PROJECT_ID)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="PROJECT_ID" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource3_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;EMPLOYEE_NAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="TASK_ID,PROJECT_ID,EMPLOYEE_ID" DataSourceID="SqlDataSource2">
    <EditItemTemplate>
        TASK_ID:
        <asp:Label ID="TASK_IDLabel1" runat="server" Text='<%# Eval("TASK_ID") %>' />
        <br />
        PROJECT_ID:
        <asp:Label ID="PROJECT_IDLabel1" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
        <br />
        EMPLOYEE_ID:
        <asp:Label ID="EMPLOYEE_IDLabel1" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />
        <br />
        TASK_DATE:
        <asp:TextBox ID="TASK_DATETextBox" runat="server" Text='<%# Bind("TASK_DATE") %>' />
        <br />
        STATUS:
        <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        TASK_ID:
        <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>' />
        <br />
        PROJECT_ID:
        <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' />
        <br />
        EMPLOYEE_ID:
        <asp:TextBox ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
        <br />
        TASK_DATE:
        <asp:TextBox ID="TASK_DATETextBox" runat="server" Text='<%# Bind("TASK_DATE") %>' />
        <br />
        STATUS:
        <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        PROJECT_ID:
        <asp:Label ID="PROJECT_IDLabel" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
        <br />
        PROJECT_NAME:
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        START_DATE:<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="START_DATE" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        END_DATE:<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="END_DATE" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        DIVISION_ID:<asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="DIVISION_ID" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        <br />
        <br />
    </ItemTemplate>
</asp:FormView>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TASK_ID,PROJECT_ID,EMPLOYEE_ID" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:TemplateField HeaderText="Employee Name">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource3" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Task Name">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource4" DataTextField="TASK_NAME" DataValueField="TASK_ID" SelectedValue='<%# Bind("TASK_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="TASK_DATE" HeaderText="TASK_DATE" SortExpression="TASK_DATE" />
        <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
    </Columns>
</asp:GridView>
<br />
<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TASK&quot;"></asp:SqlDataSource>
</asp:Content>
