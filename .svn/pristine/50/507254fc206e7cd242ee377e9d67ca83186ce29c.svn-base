<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, java.text.*"
	import="z02_vo.*" import="z01_database.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();

	boolean hasSession = false;
	AuctionUserVO userInVO = null;
	if (session.getAttribute("userIn") != null) {
		hasSession = true;
		userInVO = (AuctionUserVO) session.getAttribute("userIn");
	}
	
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	//dao, dto 세팅 
	AuctionItemDAO dao = new AuctionItemDAO();
	AuctionItemVO dto = new AuctionItemVO();

	int itemID = 1;//현재 1번 아이템 경매
	dto.setAuctionId(itemID);

	// 아이템 정보
	int auctioneerId = dao.infoItem(dto).getAuctioneerId(); //###
	String itemName = dao.infoItem(dto).getItemName(); //###
	double curBid = dao.infoItem(dto).getCurrentBidAmount(); //###
	int auctionId = dao.infoItem(dto).getAuctionId();
	String startDate = sdf.format(dao.infoItem(dto).getStartDate());
	String endDate = sdf.format(dao.infoItem(dto).getEndDate());

	//	날짜 변환. sql에서 rs.getDate로 테이블의 마감시간값을 따오면 yyyy/MM/dd로만 표시되서 
	//	SimpleDateFormat으로 날짜형식을 변형함.

	int boundary[] = {0, 5000, 50000, 10000000};
	int increaseBid[] = {1000, 2000, 3000};
	int interval = 0;
	int nowBidPrice = 0;
	for (int i = 0; i < increaseBid.length; i++) {
		if (curBid >= boundary[i] && curBid < boundary[(i + 1)]) {
			nowBidPrice = increaseBid[i];
			break;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AUCTION</title>
<script src="http://code.jquery.com/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=path%>/auction/z03_CSS/auction_main.css?ver=1.0">
<script type="text/javascript">

var hasSession =<%=hasSession%>;
if (!hasSession) {
	alert("로그인 해주세요!!");
	$(location).attr("href", "signIn.jsp");
}
$(document).ready(function() {
	$("#logout").click(function() {
		// 로그 아웃
		$(location).attr("href", "signIn.jsp?proc=logout");
	});
});

$(document).ready(function(){	
	$("input[name = curr]").attr("disabled", true);		
	var boundary = [0,5000,50000,10000000]; 
	var curBid = <%=curBid%>;
	var nowBidPrice = <%=nowBidPrice%>; 
	$("button").click(function(){
		$("form").submit();
	});
 	setTime(); 
});

		function setTime(){
	var sysday = new Date();
	var dday = new Date("<%=endDate%>");
		var gap = parseInt((dday.getTime() - sysday.getTime()) / 1000);
		var days = parseInt(gap / (60 * 60 * 24));
		var hours = parseInt((gap % (60 * 60 * 24)) / (60 * 60));
		var minutes = parseInt((gap % (60 * 60)) / 60);
		var seconds = gap % 60;
		$("#showTime").html(
				days + "Days " + hours + "Hours " + minutes + "Minutes "
						+ seconds + "Seconds ");
		if (gap <= 0) {
			$("#showTime").html("경매종료");
			alert("경매끝!");
			clearInterval(count);
		}
	}
	var count = setInterval(setTime, 1000);
</script>


</head>
<body>
	<div id="main_container" class="containner">
		<div id="hello" align="right">
				<h3><%=userInVO.getUserName()%>님 환영합니다.</h3>
				<span>권한 : [<%=userInVO.getAuth()%> 등급]
				<input type="button" value="로그아웃" id="logout" /></span>
		</div>
		<div id="item_picture">
		</div>
		<div id="item_info">
			<h2>
				<b>Item Name</b>
			</h2>
			<p><%=itemName%></p>
			<h2>ITEM ID</h2>
			<p>
				<%=itemID%>
			</p>
			<h2>Start Date</h2>
			<P><%=startDate%></P>
			<h2>End Date</h2>
			<p><%=endDate%></p>
		</div>
		<div id="countdown_info">
			<h1>Time Left</h1>
			<p id=showTime></p>
		</div>
		<div id="bidding_info">
		<form method="post" action="bidding_proc.jsp" >
            <h2 id="current_bid">Current Bid: $<%=curBid %>  </h2>
            <p id="bid_detail">Raise Bid +$<input type="text" name="curr" value="<%=nowBidPrice %>" /><br/>
            Total Bid Price : $<input type="text" name ="afterR" value="<%=(curBid+nowBidPrice) %>" />
            <button>Place Bid</button></p>
            <input type="text" name="hiddenBidderId" value="<%=auctionId %>" style="visibility:hidden;" /> 
         </form>
		</div>
		<div id="seller_info">
			<h3>Seller Informaton</h3>
			<h4>Name - > Auctioneer ID</h4>
			<h4>→ <%=auctioneerId%></h4>
			<h4>Phone Number222</h4>
			<h4>→ 010-7777-7777(none DB)</h4>
		</div>
	</div>
</body>
</html>