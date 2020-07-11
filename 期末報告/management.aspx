<%@ Page Title="" Language="C#" MasterPageFile="~/MB.master" AutoEventWireup="true" CodeFile="management.aspx.cs" Inherits="management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    會員權限管理
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
          <h2>會員權限管理</h2>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="account" DataSourceID="SqlDataSource1" GridLines="None" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="功能" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="account" HeaderText="帳號" ReadOnly="True" SortExpression="account" />
                <asp:BoundField DataField="last_name" HeaderText="姓氏" SortExpression="last_name" />
                <asp:BoundField DataField="first_name" HeaderText="名字" SortExpression="first_name" />
                <asp:BoundField DataField="authority" HeaderText="權限" SortExpression="authority" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webcontentConnectionString %>" 
              DeleteCommand="DELETE FROM [member] WHERE [account] = @account" 
              InsertCommand="INSERT INTO [member] ([account], [password], [first_name], [last_name], [email], [authority]) VALUES (@account, @password, @first_name, @last_name, @email, @authority)" 
              SelectCommand="SELECT * FROM [member] ORDER BY [email]" 
              UpdateCommand="UPDATE [member] SET [first_name] = @first_name, [last_name] = @last_name, [authority] = @authority WHERE [account] = @account">
              <DeleteParameters>
                  <asp:Parameter Name="account" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="account" Type="String" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="first_name" Type="String" />
                  <asp:Parameter Name="last_name" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="authority" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="id" Type="Int32" />
                  <asp:Parameter Name="password" Type="String" />
                  <asp:Parameter Name="first_name" Type="String" />
                  <asp:Parameter Name="last_name" Type="String" />
                  <asp:Parameter Name="email" Type="String" />
                  <asp:Parameter Name="authority" Type="String" />
                  <asp:Parameter Name="account" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
    </section>
</asp:Content>

