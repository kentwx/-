<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="winning.aspx.cs" Inherits="winning" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    團隊經歷
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h2>團隊經歷</h2>
        <h4>106學年度</h4>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:webcontentConnectionString %>" SelectCommand="SELECT [title], [win_time], [note] FROM [winning] WHERE ([school_year] = @school_year) ORDER BY [number], [win_time]">
            <SelectParameters>
                <asp:Parameter DefaultValue="106" Name="school_year" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <h4>107學年度</h4>
        
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:webcontentConnectionString %>" SelectCommand="SELECT [title], [note], [win_time] FROM [winning] WHERE ([school_year] = @school_year) ORDER BY [number], [win_time]">
            <SelectParameters>
                <asp:Parameter DefaultValue="107" Name="school_year" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <h4>108學年度</h4>
        
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:webcontentConnectionString %>" SelectCommand="SELECT [title], [note], [win_time] FROM [winning] WHERE ([school_year] = @school_year) ORDER BY [number], [win_time]">
            <SelectParameters>
                <asp:Parameter DefaultValue="108" Name="school_year" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </section>
</asp:Content>

