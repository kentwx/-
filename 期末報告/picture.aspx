<%@ Page Title="" Language="C#" MasterPageFile="~/MP.master" AutoEventWireup="true" CodeFile="picture.aspx.cs" Inherits="picture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="Server">
    活動剪影
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="style" runat="Server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h2>活動剪影</h2>
        <!-- gallery popups -->
        <div class="gallery py-5" id="gallery1">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-md-5 mb-4">※USR活動※</h2>
                <div class="news-grids gal text-center">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal1" class="image">
                                <img src="images/pic01.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img my-md-0">
                            <a href="#gal2" class="image">
                                <img src="images/pic02.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal3" class="image">
                                <img src="images/pic03.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal4" class="image">
                                <img src="images/pic04.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="major" />


        <div class="gallery py-5" id="gallery2">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-md-5 mb-4">※校外競賽※</h2>
                <div class="news-grids gal text-center">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal5" class="image">
                                <img src="images/pic05.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img my-md-0">
                            <a href="#gal6" class="image">
                                <img src="images/pic06.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal7" class="image">
                                <img src="images/pic07.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal8" class="image">
                                <img src="images/pic08.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="major" />


        <div class="gallery py-5" id="gallery3">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-md-5 mb-4">※課程教學※</h2>
                <div class="news-grids gal text-center">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal9" class="image">
                                <img src="images/pic09.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img my-md-0">
                            <a href="#gal10" class="image">
                                <img src="images/pic10.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal11" class="image">
                                <img src="images/pic11.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal12" class="image">
                                <img src="images/pic12.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <hr class="major" />


        <div class="gallery py-5" id="gallery4">
            <div class="container py-md-3">
                <h2 class="heading text-center mb-md-5 mb-4">※611讀書會※</h2>
                <div class="news-grids gal text-center">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal13" class="image">
                                <img src="images/pic13.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img my-md-0">
                            <a href="#gal14" class="image">
                                <img src="images/pic14.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal15" class="image">
                                <img src="images/pic15.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-6 gal-img">
                            <a href="#gal16" class="image">
                                <img src="images/pic16.jpg" alt="projects image" class="img-fluid"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- popup-->
        <div id="gal1" class="popup-effect">
            <div class="popup">
                <img src="images/pic01.jpg" alt="Popup Image" class="img-fluid" />
                USR活動_前置作業
                <a class="close" href="#gallery1">&times;</a>
            </div>
        </div>

        <div id="gal2" class="popup-effect">
            <div class="popup">
                <img src="images/pic02.jpg" alt="Popup Image" class="img-fluid" />
                USR活動_部分合影
                <a class="close" href="#gallery1">&times;</a>
            </div>
        </div>

        <div id="gal3" class="popup-effect">
            <div class="popup">
                <img src="images/pic03.jpg" alt="Popup Image" class="img-fluid" />
                USR活動_全體合照
                <a class="close" href="#gallery1">&times;</a>
            </div>
        </div>

        <div id="gal4" class="popup-effect">
            <div class="popup">
                <img src="images/pic04.jpg" alt="Popup Image" class="img-fluid" />
                USR活動_檢討會議
                <a class="close" href="#gallery1">&times;</a>
            </div>
        </div>

        <div id="gal5" class="popup-effect">
            <div class="popup">
                <img src="images/pic05.jpg" alt="Popup Image" class="img-fluid" />
               2018年龍華科大創新創業團隊選秀競賽
                <a class="close" href="#gallery2">&times;</a>
            </div>
        </div>

        <div id="gal6" class="popup-effect">
            <div class="popup">
                <img src="images/pic06.jpg" alt="Popup Image" class="img-fluid" />
                2018全國大專院校-創新x創業x創客構想書競賽_勤益科大
                <a class="close" href="#gallery2">&times;</a>
            </div>
        </div>

        <div id="gal7" class="popup-effect">
            <div class="popup">
                <img src="images/pic07.jpg" alt="Popup Image" class="img-fluid" />
                2019海峽兩岸大學生創業大賽_廣東工貿
                <a class="close" href="#gallery2">&times;</a>
            </div>
        </div>

        <div id="gal8" class="popup-effect">
            <div class="popup">
                <img src="images/pic08.jpg" alt="Popup Image" class="img-fluid" />
                第十四屆IPMA全國大專院校專案管理實作競賽
                <a class="close" href="#gallery2">&times;</a>
            </div>
        </div>

        <div id="gal9" class="popup-effect">
            <div class="popup">
                <img src="images/pic09.jpg" alt="Popup Image" class="img-fluid" />
                振聲高中教學-1
                <a class="close" href="#gallery3">&times;</a>
            </div>
        </div>

        <div id="gal10" class="popup-effect">
            <div class="popup">
                <img src="images/pic10.jpg" alt="Popup Image" class="img-fluid" />
                振聲高中教學-2
                <a class="close" href="#gallery3">&times;</a>
            </div>
        </div>

        <div id="gal11" class="popup-effect">
            <div class="popup">
                <img src="images/pic11.jpg" alt="Popup Image" class="img-fluid" />
                金甌女中教學-1
                <a class="close" href="#gallery3">&times;</a>
            </div>
        </div>

        <div id="gal12" class="popup-effect">
            <div class="popup">
                <img src="images/pic12.jpg" alt="Popup Image" class="img-fluid" />
                金甌女中教學-2
                <a class="close" href="#gallery3">&times;</a>
            </div>
        </div>

        <div id="gal13" class="popup-effect">
            <div class="popup">
                <img src="images/pic13.jpg" alt="Popup Image" class="img-fluid" />
                107-2 Arduino讀書會
                <a class="close" href="#gallery4">&times;</a>
            </div>
        </div>

        <div id="gal14" class="popup-effect">
            <div class="popup">
                <img src="images/pic14.jpg" alt="Popup Image" class="img-fluid" />
                108-1 3D列印讀書會
                <a class="close" href="#gallery4">&times;</a>
            </div>
        </div>

        <div id="gal15" class="popup-effect">
            <div class="popup">
                <img src="images/pic15.jpg" alt="Popup Image" class="img-fluid" />
                108-1 Arduino讀書會
                <a class="close" href="#gallery4">&times;</a>
            </div>
        </div>

        <div id="gal16" class="popup-effect">
            <div class="popup">
                <img src="images/pic16.jpg" alt="Popup Image" class="img-fluid" />
                108-1 App Inventor 2 讀書會
                <a class="close" href="#gallery4">&times;</a>
            </div>
        </div>
        <!-- //popup -->
        <!-- //gallery popups -->
    </section>
</asp:Content>

