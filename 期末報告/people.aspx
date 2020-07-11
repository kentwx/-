<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="people.aspx.cs" Inherits="people" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    成員介紹
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" Runat="Server">
    <style>
        /* gallery page */
        .gal-img {
            padding: 5px;
        }

            .gal-img img, .popup img {
                width: 100%;
            }
        /* popup */
        .popup-effect {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, 0.7);
            transition: opacity 0ms;
            visibility: hidden;
            opacity: 0;
            z-index: 99;
        }

            .popup-effect:target {
                visibility: visible;
                opacity: 1;
            }

        .popup {
            background: #fff;
            border-radius: 4px;
            max-width: 430px;
            position: relative;
            margin: 8em auto;
            padding: 3em 2em;
            z-index: 999;
            text-align: center;
        }

            .popup .close {
                position: absolute;
                top: 5px;
                right: 15px;
                transition: all 200ms;
                font-size: 30px;
                font-weight: bold;
                text-decoration: none;
                color: #000;
            }


        /* //popup */
        /* //gallery page */
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section>
        <h2> 成員介紹</h2>

          <div class="gallery py-5" id="gallery1">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-md-5 mb-4">※團隊-看我R※</h2>
                <div class="news-grids gal text-center">
                    <div class="row">
                         <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal1" class="image">
                                <img src="images/peo01.png" alt="projects image" class="img-fluid">
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img my-md-0">
                            <a href="#gal2" class="image">
                                <img src="images/peo02.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal3" class="image">
                                <img src="images/peo03.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/peo04.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/peo05.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal1" class="image">
                                <img src="images/peo06.png" alt="projects image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="major" />


        <div class="gallery py-5" id="gallery2">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-md-5 mb-4">※團隊-智慧購物車※</h2>
                <div class="news-grids gal text-center">
                    <div class="row">

                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img my-md-0">
                            <a href="#gal2" class="image">
                                <img src="images/peo07.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal3" class="image">
                                <img src="images/peo08.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/peo09.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/peo10.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/peo11.png" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/peo12.png" alt="projects image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>











  
    </section>
</asp:Content>

