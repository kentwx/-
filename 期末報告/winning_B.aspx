<%@ Page Title="" Language="C#" MasterPageFile="~/MB.master" AutoEventWireup="true" CodeFile="winning_B.aspx.cs" Inherits="winning_B" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    編輯團隊經歷
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h2>編輯團隊經歷</h2>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="id" AllowPaging="True" PageSize="5">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ButtonType="Button" HeaderText="功能" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="school_year" HeaderText="年度" SortExpression="school_year" />
                <asp:BoundField DataField="number" HeaderText="學期" SortExpression="number" />
                <asp:BoundField DataField="title" HeaderText="標題" SortExpression="title" />
                <asp:BoundField DataField="note" HeaderText="備註(獎項、作品)" SortExpression="note" />
                <asp:BoundField DataField="win_time" HeaderText="時間" SortExpression="win_time" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webcontentConnectionString %>" 
            SelectCommand="SELECT * FROM [winning] ORDER BY [school_year] DESC, [number] DESC, [win_time] DESC" 
            DeleteCommand="DELETE FROM [winning] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [winning] ([school_year], [number], [win_time], [title], [note]) VALUES (@school_year, @number, @win_time, @title, @note)" 
            UpdateCommand="UPDATE [winning] SET [school_year] = @school_year, [number] = @number, [win_time] = @win_time, [title] = @title, [note] = @note WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="school_year" Type="Int32" />
                <asp:Parameter Name="number" Type="Int32" />
                <asp:Parameter DbType="Date" Name="win_time" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="school_year" Type="Int32" />
                <asp:Parameter Name="number" Type="Int32" />
                <asp:Parameter DbType="Date" Name="win_time" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="note" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </section>
</asp:Content>

