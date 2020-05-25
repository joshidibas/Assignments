<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeSkillForm.aspx.cs" Inherits="DatabaseCourseWork.EmployeeSkillForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEE_ID&quot;, &quot;EMPLOYEE_NAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEESKILLS&quot; WHERE (&quot;EMPLOYEE_ID&quot; = :EMPLOYEE_ID)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="EMPLOYEE_ID" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SKILL&quot;"></asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEE_ID,SKILL_ID" DataSourceID="SqlDataSource2">
    <Columns>
        <asp:TemplateField HeaderText="EMPLOYEE_NAME">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="EMPLOYEE_NAME" DataValueField="EMPLOYEE_ID" SelectedValue='<%# Bind("EMPLOYEE_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SKILL_NAME">
            <ItemTemplate>
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="SKILL_NAME" DataValueField="SKILL_ID" SelectedValue='<%# Bind("SKILL_ID") %>'>
                </asp:DropDownList>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</asp:Content>
