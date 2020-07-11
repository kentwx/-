<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    首頁    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="banner">
        <div class="content">
            <header>
                <h1>歡迎來到<br />
                    涵瑄工作室</h1>
                <asp:Label ID="lblCounter" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <p>一群來自龍華資管F611專題室的優質團隊</p>
            </header>
            <p>Hi~我們是一群立志要當廢物的學生，什麼課都要躺著過_(:з」∠)_
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <b>
                    人生好難 太難了
                </b>
            </p>
            <ul class="actions">
                <li><a href="about.aspx" class="button big">關於涵瑄</a></li>
            </ul>
        </div>
        <span class="image object">
            <img src="images/home.jpg" alt="" />
        </span>
    </section>

</asp:Content>

