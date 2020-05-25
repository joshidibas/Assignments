<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="skill.aspx.cs" Inherits="DatabaseCourseWork.skill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;SKILL&quot; WHERE &quot;SKILL_ID&quot; = :SKILL_ID" InsertCommand="INSERT INTO &quot;SKILL&quot; (&quot;SKILL_ID&quot;, &quot;SKILL_NAME&quot;) VALUES (:SKILL_ID, :SKILL_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SKILL&quot;" UpdateCommand="UPDATE &quot;SKILL&quot; SET &quot;SKILL_NAME&quot; = :SKILL_NAME WHERE &quot;SKILL_ID&quot; = :SKILL_ID">
        <DeleteParameters>
            <asp:Parameter Name="SKILL_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SKILL_ID" Type="String" />
            <asp:Parameter Name="SKILL_NAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SKILL_NAME" Type="String" />
            <asp:Parameter Name="SKILL_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="SKILL_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            SKILL_ID:
            <asp:Label ID="SKILL_IDLabel1" runat="server" Text='<%# Eval("SKILL_ID") %>' />
            <br />
            SKILL_NAME:
            <asp:TextBox ID="SKILL_NAMETextBox" runat="server" Text='<%# Bind("SKILL_NAME") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            SKILL_ID:
            <asp:TextBox ID="SKILL_IDTextBox" runat="server" Text='<%# Bind("SKILL_ID") %>' />
            <br />
            SKILL_NAME:
            <asp:TextBox ID="SKILL_NAMETextBox" runat="server" Text='<%# Bind("SKILL_NAME") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            SKILL_ID:
            <asp:Label ID="SKILL_IDLabel" runat="server" Text='<%# Eval("SKILL_ID") %>' />
            <br />
            SKILL_NAME:
            <asp:Label ID="SKILL_NAMELabel" runat="server" Text='<%# Bind("SKILL_NAME") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SKILL_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SKILL_ID" HeaderText="SKILL_ID" ReadOnly="True" SortExpression="SKILL_ID" />
            <asp:BoundField DataField="SKILL_NAME" HeaderText="SKILL_NAME" SortExpression="SKILL_NAME" />
        </Columns>
    </asp:GridView>
</asp:Content>
