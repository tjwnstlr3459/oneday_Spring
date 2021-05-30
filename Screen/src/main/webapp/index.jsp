<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <script
      type="text/javascript"
      src="http://code.jquery.com/jquery-3.3.1.js"
    ></script>
    <link href="toy_main.css" rel="stylesheet" type="text/css" />
    <title>Document</title>
  </head>
  <style>
    body {
      margin: 0;
      padding: 0;
    }
    div {
      border: 1px solid black;
    }
    .pan {
      width: 1180px;
      height: 1600px;
      margin: 0 auto;
    }
    .header {
      height: 100px;
    }
    .slide {
      overflow: hidden;
    }
    .slide > img {
      width: 100%;
      height: 600px;
      object-fit: cover;
    }
    .content {
    }

    .content_con1 {
      width: 100%;
      height: 350px;
      background-color: rgba(71, 71, 240, 0.405);
    }
    .content_con1 > div {
      float: left;
      border: 1px solid black;
      box-sizing: border-box;
    }
    .con1_1,
    .con1_2 {
      width: 50%;
      height: 100%;
    }
    .stick {
      width: 100%;
      height: 180px;
    }
    .ploductLogo {
      width: 100%;
      height: 80px;
    }
    .content_con2 {
      width: 100%;
      background-color: rgba(0, 255, 242, 0.385);
    }
    .con2_1 {
      width: 100%;
      height: 200px;
      background-color: rgba(217, 226, 43, 0.631);
    }
    .con2_1 > div {
      float: left;
      width: 15%;
      height: 100%;
      box-sizing: border-box;
      margin: 0 auto;
      margin-left: 45px;
    }

    .footer {
      height: 150px;
      display: block;
      background-color: rgba(0, 0, 0, 0.645);
    }
  </style>
  <body>
    <div class="wrap">
      <div id="wrapper">
        <div class="overlay"></div>

        <!-- Sidebar -->
        <nav
          class="navbar navbar-inverse navbar-fixed-top"
          id="sidebar-wrapper"
          role="navigation"
        >
          <ul class="nav sidebar-nav">
            <li class="sidebar-brand">
              <a href="#"> Bootstrap 3 </a>
            </li>
            <li>
              <a href="#"><i class="fa fa-fw fa-home"></i> Home</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-fw fa-folder"></i> Page one</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-fw fa-file-o"></i> Second page</a>
            </li>
            <li>
              <a href="#"><i class="fa fa-fw fa-cog"></i> Third page</a>
            </li>
          </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
          <button
            type="button"
            class="hamburger is-closed animated fadeInLeft"
            data-toggle="offcanvas"
          >
            <span class="hamb-top"></span>
            <span class="hamb-middle"></span>
            <span class="hamb-bottom"></span>
          </button>
          <!-- header -->
          <div class="header">header</div>
          <!-- 슬라이드 이미지 -->
          <div class="slide"><img src="/mini_img/4.jpg" /></div>
          <!-- 가운데 정렬을 위한 컨텐츠 외부 DIV -->
          <div class="pan">
            <!-- content -->
            <div class="content">
              <!-- 광고 -->
              <div class="content_con1">
                <div class="con1_1">광고</div>
                <div class="con1_2">광고</div>
              </div>
              <div class="stick">광고배너</div>
              <div class="ploductLogo">제품들</div>
              <!-- 제품 -->
              <div class="content_con2">
                <div class="con2_1">
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                </div>
                <div class="con2_1">
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                </div>
                <div class="con2_1">
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                </div>
                <div class="con2_1">
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                  <div></div>
                </div>
              </div>
            </div>
          </div>
        <!-- footer -->
        <div class="footer">footer</div>
      </div>
    </div>
  </body>
  <style></style>
  <script>
    $(document).ready(function () {
      var trigger = $(".hamburger"),
        overlay = $(".overlay"),
        isClosed = false;

      trigger.click(function () {
        hamburger_cross();
      });

      function hamburger_cross() {
        if (isClosed == true) {
          overlay.hide();
          trigger.removeClass("is-open");
          trigger.addClass("is-closed");
          isClosed = false;
        } else {
          overlay.show();
          trigger.removeClass("is-closed");
          trigger.addClass("is-open");
          isClosed = true;
        }
      }

      $('[data-toggle="offcanvas"]').click(function () {
        $("#wrapper").toggleClass("toggled");
      });
    });
  </script>
</html>
