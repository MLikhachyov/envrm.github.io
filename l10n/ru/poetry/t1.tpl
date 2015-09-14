<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="ru-RU">
  <head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Personal page">
    <meta name="author" content="Likhachev Maxim">

    <link rel="shortcut icon" href="../../../ico/favicon.ico">

    <title>#!/usr/bin/env rm -- Стихотворения: &laquo;{{TITLE}}&raquo;</title>

    <link rel="stylesheet" href="../../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../css/poetry.css">
    <link rel="stylesheet" href="../../../css/fontello.css">
    <link rel="stylesheet" href="../../../css/animation.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script src="../../../js/jquery-2.1.0.min.js"></script>
    <script src="../../../js/bootstrap.min.js"></script>

    <script>
      $(function() { 
        //Перелистывание страниц
        $(document).keydown(function(e) {
          var unicode = e.charCode ? e.charCode : e.keyCode;
          // Следующая страница
          if (unicode == 39) {
            var tc = document.getElementById("nav-next");
            var ary = tc ? tc.getElementsByTagName("a") : [];
            if(ary.length >= 2)
              ary[0].href = ary[1].href;
              window.open(ary[0].href,"_self");
              // Предыдущая страница
            } else if (unicode == 37) {
              var tc = document.getElementById("nav-prev");
              var ary = tc ? tc.getElementsByTagName("a") : [];
              if(ary.length >= 2)
                ary[0].href = ary[1].href;
                window.open(ary[0].href,"_self");
              }
            })
          });
    </script>
  </head>

  <body>

    <div class="menu dropdown">
      <ul class="list-unstyled">
        <li><a href="../../../index.html"><span class="icon-home"></span></a></li>
        <li><a href="../programming.html"><span class="icon-tools"></span></a></li>
        <li><a href="../music.html"><span class="icon-note-beamed"></span></a></li>
        <li><a href="../travelling.html"><span class="icon-globe"></span></a></li>
        <li><a href="../articles.html"><span class="icon-book"></span></a></li>
        <li><a href="../about.html"><span class="icon-user"></span></a></li>
      </ul>

      <a data-toggle="dropdown" href="#"><span class="icon-feather" ></span><span class="caret"></span></a>
      <ul class="menu-list dropdown-menu" role="menu" aria-labelledby="dLabel">
