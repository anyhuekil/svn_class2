<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PentAcorn</title>

    <!-- Bootstrap Core CSS -->
    
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    
    <style>
    .carousel-inner > .item > img,
  	.carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  	}  
    
	.guestheader {
	     display: table;
	    position: relative;
	    width: 100%;
	    height: 100%;
	    background: url(bg2.jpg) no-repeat center center scroll; 
	    -webkit-background-size: cover;
	    -moz-background-size: cover;
	    background-size: cover;
	    -o-background-size: cover;
	    color:white;
	}

    
    </style>
</head>

<body style="overflow:hidden;">

    <!-- Menu -->
    <a id="menu-toggle" href="#" class="btn btn-dark btn-lg toggle"><i class="fa fa-bars"></i></a>
    <nav id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <a id="menu-close" href="#" class="btn btn-light btn-lg pull-right toggle"><i class="fa fa-times"></i></a>
            <li class="sidebar-brand">  
            <!-- login Form -->    
      			<a href="#top" onclick=$("#menu-close").click();><%String pid=request.getParameter("id") ;%>Welcome, <%=pid %>!!</a><input type="hidden" id="pid" value="<%=pid %>" />    
            </li>
            <li>
                <a href="#top" onclick=$("#menu-close").click();>Home</a>
            </li>
            <li>
                <a href="#game02" onclick=$("#menu-close").click();>Game</a>
            </li>
            
            <li>
                <a href="#game03" onclick=$("#menu-close").click();renew();>Final</a>
            </li>            
        </ul>
    </nav>


    <section id="top" class="guestheader">
    <div class="text-vertical-center btn btn-dark">
            <h1>Welcome, <%=pid %> !!!</h1>
            <br>
            <a href="#game02" class="btn btn-dark btn-lg">Let the game start</a>
            <br>    
        </div>
    </section>    
    
    <!-- Game1 --><!-- iframe 각 게임 연결 -->
    
    
    <!-- Game2 -->
    <section id="game02" class="game02">
        <iframe id="my_iframe" name='my_iframe' width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="iframe02_guest.html"></iframe>                
    </section>
    
    <!-- Game3 -->
    <section id="game03" class="game03">
    	<iframe id="my_iframe02" name='my_iframe02' width="100%" height="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="game_guest.html"></iframe>
    </section>
 
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script>
    
    
    function renew(){
    	
    	$('#my_iframe02')[0].contentWindow.renew();
    }
    
    // 메뉴 닫기
    $("#menu-close").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // 메뉴 열기
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#sidebar-wrapper").toggleClass("active");
    });
    // 싱글페이지 해당 메뉴로 이동
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
                    }, 1000);
                    return false;
                }
            }
        });
    });
	</script>
</body>
</html>
