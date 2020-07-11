<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    會員登入
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h2>會員登入</h2>
        帳號：<asp:textbox id="txtAccount" runat="server" Width="250px" BorderColor="#F56A6A"></asp:textbox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*此欄位必填" ControlToValidate="txtAccount" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        密碼：<asp:textbox id="txtPwd" runat="server" Width="250px" TextMode="Password" BorderColor="#F56A6A"></asp:textbox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*此欄位必填" ControlToValidate="txtPwd" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />        
        <asp:button id="btnLogin" runat="server" text="登入"  onclick="btnLogin_Click1" />
        <asp:label id="lblErr" runat="server" Font-Size="Large" Font-Bold="True" ForeColor="Red"></asp:label>
        <br />
         <br />
        沒有帳號嗎？
        <asp:hyperlink runat="server" navigateurl="register.aspx">註冊帳號</asp:hyperlink>
        <br />


    </section>

</asp:Content>

