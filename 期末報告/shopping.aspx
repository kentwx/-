<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="shopping.aspx.cs" Inherits="shopping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    課程預約
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h2>課程預約</h2>
        <asp:Label ID="Label1" runat="server" Text="請選擇下列課程選項："></asp:Label>

        <asp:DropDownList ID="close" runat="server" AutoPostBack="True" Width="210px" OnSelectedIndexChanged="close_SelectedIndexChanged">
            <asp:ListItem Value="0">==請選擇課程==</asp:ListItem>
            <asp:ListItem Value="1">三小時Code程式教學</asp:ListItem>
            <asp:ListItem Value="2">三小時Arduino教學</asp:ListItem>
            <asp:ListItem Value="3">六小時3D列印實作</asp:ListItem>
        </asp:DropDownList>
        <br />
        請選擇課程時段：<br />
        <asp:DropDownList ID="time" runat="server"  Width="210px">
            <asp:ListItem Value="0">==請先選擇課程==</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="請選擇預約課程之日期："></asp:Label>
        <br />
        <asp:TextBox ID="txt_date" runat="server" Width="210px"></asp:TextBox>
        
        <asp:Calendar ID="Calendar1" runat="server" Width="220px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged1">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:Button ID="Button2" runat="server" Text="送出" OnClick="Button2_Click" />
        <asp:Label ID="msg" runat="server" Text="顯示區"></asp:Label>
        <br />
        <br />

    </section>
</asp:Content>

