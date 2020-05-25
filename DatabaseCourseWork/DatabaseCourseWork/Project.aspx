<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="DatabaseCourseWork.Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;PROJECT_ID&quot; = :PROJECT_ID" InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;DIVISION_ID&quot;) VALUES (:PROJECT_ID, :PROJECT_NAME, :START_DATE, :END_DATE, :DIVISION_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;" UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;PROJECT_NAME&quot; = :PROJECT_NAME, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;DIVISION_ID&quot; = :DIVISION_ID WHERE &quot;PROJECT_ID&quot; = :PROJECT_ID">
        <DeleteParameters>
            <asp:Parameter Name="PROJECT_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PROJECT_ID" Type="String" />
            <asp:Parameter Name="PROJECT_NAME" Type="String" />
            <asp:Parameter Name="START_DATE" Type="DateTime" />
            <asp:Parameter Name="END_DATE" Type="DateTime" />
            <asp:Parameter Name="DIVISION_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PROJECT_NAME" Type="String" />
            <asp:Parameter Name="START_DATE" Type="DateTime" />
            <asp:Parameter Name="END_DATE" Type="DateTime" />
            <asp:Parameter Name="DIVISION_ID" Type="String" />
            <asp:Parameter Name="PROJECT_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DIVISION_ID&quot;, &quot;DIVISION_NAME&quot; FROM &quot;DIVISION&quot;"></asp:SqlDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            PROJECT_ID:
            <asp:Label ID="PROJECT_IDLabel1" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
            <br />
            PROJECT_NAME:
            <asp:TextBox ID="PROJECT_NAMETextBox" runat="server" Text='<%# Bind("PROJECT_NAME") %>' />
            <br />
            START_DATE:
            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
            <br />
            END_DATE:
            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
            <br />
            DIVISION_ID:
            <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            PROJECT_ID:
            <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' />
            <br />
            PROJECT_NAME:
            <asp:TextBox ID="PROJECT_NAMETextBox" runat="server" Text='<%# Bind("PROJECT_NAME") %>' />
            <br />
            START_DATE:
            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
            <br />
            END_DATE:
            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
            <br />
            DIVISION_ID:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIVISION_NAME" DataValueField="DIVISION_ID" SelectedValue='<%# Bind("DIVISION_ID") %>'>
            </asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PROJECT_ID:
            <asp:Label ID="PROJECT_IDLabel" runat="server" Text='<%# Eval("PROJECT_ID") %>' />
            <br />
            PROJECT_NAME:
            <asp:Label ID="PROJECT_NAMELabel" runat="server" Text='<%# Bind("PROJECT_NAME") %>' />
            <br />
            START_DATE:
            <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
            <br />
            END_DATE:
            <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
            <br />
            DIVISION_ID:
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" ReadOnly="True" SortExpression="PROJECT_ID" />
                    <asp:BoundField DataField="PROJECT_NAME" HeaderText="PROJECT_NAME" SortExpression="PROJECT_NAME" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
                    <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
                    <asp:BoundField DataField="DIVISION_ID" HeaderText="DIVISION_ID" SortExpression="DIVISION_ID" />
                </Columns>
            </asp:GridView>
            <br />

        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" ReadOnly="True" SortExpression="PROJECT_ID" />
            <asp:BoundField DataField="PROJECT_NAME" HeaderText="PROJECT_NAME" SortExpression="PROJECT_NAME" />
            <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" />
            <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" />
            <asp:TemplateField HeaderText="DIVISION_NAME">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="DIVISION_NAME" DataValueField="DIVISION_ID" SelectedValue='<%# Bind("DIVISION_ID") %>'>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
