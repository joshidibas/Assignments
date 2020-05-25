<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectStaffSceduleForm.aspx.cs" Inherits="DatabaseCourseWork.ProjectStaffSceduleForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
    Project_Name:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEEPROJECT&quot; WHERE (&quot;PROJECT_ID&quot; = :PROJECT_ID)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="PROJECT_ID" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEE_ID,PROJECT_ID" DataSourceID="SqlDataSource2">
    <EditItemTemplate>
        EMPLOYEE_ID:
        <asp:Label ID="EMPLOYEE_IDLabel1" runat="server" Text='<%# Eval("EMPLOYEE_ID") %>' />
        <br />
        PROJECT_ID:
        <asp:Label ID="PROJECT_IDLabel1" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        EMPLOYEE_ID:
        <asp:TextBox ID="EMPLOYEE_IDTextBox" runat="server" Text='<%# Bind("EMPLOYEE_ID") %>' />
        <br />
        PROJECT_ID:
        <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        &nbsp;PROJECT_ID:
        <asp:Label ID="PROJECT_IDLabel" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
        <br />
        <br />
        PROJECT_NAME:<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        START_DATE:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="START_DATE" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        END_DATE:<asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource1" DataTextField="END_DATE" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
        <br />
        DIVISION:<asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource1" DataTextField="DIVISION_ID" DataValueField="PROJECT_ID" SelectedValue='<%# Bind("PROJECT_ID") %>'>
        </asp:DropDownList>
    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID,PROJECT_ID" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:BoundField DataField="EMPLOYEE_ID" HeaderText="EMPLOYEE_ID" ReadOnly="True" SortExpression="EMPLOYEE_ID" />
        <asp:TemplateField HeaderText="Employee_Name">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource3" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Address">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource3" DataTextField="CONTACT" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Contact">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList8" runat="server" DataSourceID="SqlDataSource3" DataTextField="CONTACT" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Dependenet_Id">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList9" runat="server" DataSourceID="SqlDataSource3" DataTextField="DIVISION_ID" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</asp:Content>
