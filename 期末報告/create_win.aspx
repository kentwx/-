<%@ Page Title="" Language="C#" MasterPageFile="~/MB.master" AutoEventWireup="true" CodeFile="create_win.aspx.cs" Inherits="create_win" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    新增團隊經歷
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h2>新增團隊經歷 <asp:label id="Label1" runat="server" forecolor="Red" font-size="Large"></asp:label></h2>
        
        <br />
        請輸入一則團隊經歷：<br />
        <br />
        日期：<asp:textbox id="TextBox1" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入日期"></asp:textbox>
        &nbsp; （日期格式：yyyy-MM-dd）
        <br />
        <br />
        學年：<asp:textbox id="TextBox2" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入學年"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" errormessage="*請輸入學年" font-size="Large" controltovalidate="TextBox2" forecolor="Red"></asp:requiredfieldvalidator>
        <br />
        <br />
        學期：<asp:textbox id="TextBox3" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入學期"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="*請輸入學期" controltovalidate="TextBox3" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <br />
        <br />
        標題：<asp:textbox id="TextBox4" runat="server" height="300px" textmode="MultiLine" width="500px" bordercolor="#F56A6A" placeholder="(內容)"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" errormessage="*請輸入標題" controltovalidate="TextBox4" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <br />
        <br />
        備註(獎項、作品)：<asp:textbox id="TextBox5" runat="server" width="250px" bordercolor="#F56A6A" placeholder="(獎項、作品)"></asp:textbox>
        <br />
        <br />
        <asp:button id="Button1" runat="server" text="新增一筆資料" onclick="Button1_Click" />
        <br />
        <br />
        <br />

        <br />
        <br />
        <br />
        <br />
        <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:webcontentConnectionString %>"
            insertcommand="INSERT INTO [winning] ([school_year], [number], [win_time], [title], [note]) VALUES (@school_year, @number, @win_time, @title, @note)" oninserted="SqlDataSource1_Inserted">
            
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="win_time" PropertyName="Text" Type="DateTime" />
                <asp:ControlParameter ControlID="TextBox2" Name="school_year" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox3" Name="number" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox4" Name="title" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox5" Name="note" PropertyName="Text" Type="String" />
                
                
            </InsertParameters>
           
        </asp:sqldatasource>

    </section>
</asp:Content>

