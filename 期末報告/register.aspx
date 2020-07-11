<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    註冊帳號
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script lang ="javascript" type="text/javascript">
        function btnRegister_onclick() {
            var answer = confirm("是否確定註冊");
            if (answer) {
                alert("註冊完成");
                window.location = "login.aspx";
            }
            else { }
        }
    </script>

    <section>
        <h2>註冊帳號</h2>
        帳號：<asp:textbox id="txt_New_Account" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入至少6碼英數字" OnTextChanged="txt_New_Account_TextChanged"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" errormessage="*此欄位必填" controltovalidate="txt_New_Account" font-bold="True" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <asp:regularexpressionvalidator id="RegularExpressionValidator1" runat="server" controltovalidate="txt_New_Account" errormessage="*帳號至少6碼英數字" font-bold="True" font-size="Large" forecolor="Red" validationexpression="^.*(?=.{6,}).*$"></asp:regularexpressionvalidator>
        <br />
        密碼：<asp:textbox id="txt_New_Pwd" runat="server" width="250px" textmode="Password" bordercolor="#F56A6A" placeholder="請輸入至少6碼英數字"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" errormessage="*此欄位必填" controltovalidate="txt_New_Pwd" font-bold="True" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <asp:regularexpressionvalidator id="RegularExpressionValidator2" runat="server" controltovalidate="txt_New_Pwd" errormessage="*密碼至少6碼英數字" font-bold="True" font-size="Large" forecolor="Red" validationexpression="^.*(?=.{6,}).*$"></asp:regularexpressionvalidator>
        <br />
        姓氏：<asp:textbox id="txtLast_name" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入您的姓氏"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" errormessage="*此欄位必填" controltovalidate="txtLast_name" font-bold="True" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <br />
        名字：<asp:textbox id="txtFirst_name" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入您的名字"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" errormessage="*此欄位必填" controltovalidate="txtFirst_name" font-bold="True" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <br />
        信箱：<asp:textbox id="txtEmail" runat="server" width="250px" bordercolor="#F56A6A" placeholder="請輸入您的信箱"></asp:textbox>
        <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" errormessage="*信箱欄位不得為空" controltovalidate="txtEmail" font-bold="True" font-size="Large" forecolor="Red"></asp:requiredfieldvalidator>
        <asp:regularexpressionvalidator id="RegularExpressionValidator3" runat="server" controltovalidate="txtEmail" errormessage="*非E-MAIL格式" font-bold="True" font-size="Large" forecolor="Red" validationexpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>
        <br />
        <br />
        <asp:button id="btnRegister" runat="server" text="註冊" onclick="btnRegister_Click1" />
        <asp:label id="lblMessage" runat="server" font-size="Large" font-bold="True" forecolor="Red"></asp:label>
        <br />
        <br />
        已有帳號&nbsp;&nbsp;
        <asp:hyperlink runat="server" navigateurl="login.aspx" >會員登入</asp:hyperlink>
        <br />
        
    </section>
</asp:Content>

