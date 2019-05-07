<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="font-size: 256px;">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport"
			content="initial-scale=1.0,user-scalable=no,maximum-scale=1,width=device-width">
		<meta name="format-detection" content="telephone=no">

		<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
		<c:set var="cp" value="${pageContext.request.contextPath}"></c:set>
		<script language="javascript" type="text/javascript"
			src="<c:out value="${cp}"/>/js/staticconfig.js"></script>
		<script language="javascript" type="text/javascript"
			src="<c:out value="${cp}"/>/js/jquery-2.js"></script>
		<link type="text/css" rel="stylesheet"
			href="<c:out value="${cp}"/>/css/global.css">
		<link type="text/css" rel="stylesheet"
			href="<c:out value="${cp}"/>/css/swiper-3.css">
		<link type="text/css" rel="stylesheet"
			href="<c:out value="${cp}"/>/css/bankcharge-version3.css">
		<title>交话费</title>
		<script type="text/javascript">
        document.documentElement.style.fontSize = document.documentElement.clientWidth / 750 * 100 + 'px';
    </script>
		<script src="<c:out value="${cp}"/>/js/prompt.js"></script>
		<script type="text/javascript"
			src="<c:out value="${cp}"/>/js/TCapIframeApi.js"></script>
		<script type="text/javascript" async=""
			src="<c:out value="${cp}"/>/js/TCapMsg.js"></script>
		<script type="text/javascript" async=""
			src="<c:out value="${cp}"/>/js/TCapIframe_m.js"></script>
		<script type="text/javascript" async=""
			src="<c:out value="${cp}"/>/js/main.js"></script>
		<link rel="stylesheet"
			href="<c:out value="${cp}"/>/css/extend/bootstrap/css/bootstrap.css?v=<c:out value="${version}" />" />
		<link rel="stylesheet"
			href="<c:out value="${cp}"/>/css/extend/bootstrap/css/bootstrap-select.min.css?v=<c:out value="${version}" />" />
		<script type="text/javascript"
			src="<c:out value="${cp}"/>/css/extend/bootstrap/js/bootstrap-select.js?v=<c:out value="${version}" />"></script>
		<script type="text/javascript"
			src="<c:out value="${cp}"/>/css/extend/bootstrap/js/bootstrap.3.3.4.min.js?v=<c:out value="${version}" />"></script>
	</head>
	<body>
		<div class="body-class" id="body-class-random">
			<div class="wapHeader" id="wapHeader" style="display: block;">
				<div class="" style="width: 100%;">

					<div>
						<b>海外手机话费支付平台</b>
						<div class="userAccountInfo">
							用戶 ：1234511
							</br>
							余額 ：15.5211元
						</div>
					</div>

					<div>
						<select name="select_language" id="select_language"
							class="shortselect" style="float: right">
							<option value="1">
								中文
							</option>
							<option value="2">
								英文
							</option>
						</select>
					</div>
				</div>

			</div>
			<!--轮播图start-->
			<div class="swiper-container" id="banner">
				<div class="swiper-wrapper Carousel">
					<div class="swiper-slide"
						>
						<img src="<c:out value="${cp}"/>/images/carousel.png">
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<div class="pointCon dispay" id="scrollTipsDiv"
				style="display: block;">
				<div class="tips_info">
					温馨提示
				</div>
				<!--<h4 class="hrt" id="messageTips"><label>温馨提示：</label></h4>-->
				<div id="scrollTipsContent"
					class="swiper-container messageTipsContent swiper-container-vertical">
					<div class="swiper-wrapper" id="tipContent"
						style="transform: translate3d(0px, -205px, 0px); transition-duration: 0ms;">
						<div class="swiper-slide swiper-slide-prev"
							style="font-size: 0.24rem; height: 205px;">
							1、使用4G号码登录给本机进行非固定面值交费，可享积分抵扣。使用积分抵扣的话费不能开具发票。
						</div>
						<div class="swiper-slide swiper-slide-active"
							style="font-size: 0.24rem; height: 205px;">
							2、通过联通号码登录用户给本人固定金额（30元/50元/100元/300元）交费成功后，进入自助服务--电子发票--实缴发票页面进行开具发票。在选择月结发票/实缴发票开具时，发票抬头将默认为交费号码的客户信息。
						</div>
					</div>
				</div>
				<span class="arr"></span>
			</div>


			<div class="bankcharge" id="default-page" data-role="page">
				<input id="hiddenNumber" value="" type="hidden">
				<input id="cellInfoQueryFlag" value="" type="hidden">
				<!--<div class="flag"></div>-->
				<div class="page01 mobile-page mob-Page">
					<!--手机输入号码框  begin-->
					<section class="border-1px num-box mobile-num phone-num mob-num">
					<dl>
						<dt>
							<label class="address-book" style="display: none;"
								onclick="getTXL('number')"></label>
							<label id="del-num-modify" class="del-num"
								onclick="clearPhoneNumber();" style="display: none;"></label>
						</dt>
						<dd>
							<div style="width: 30%">
								<select name="select_states" onChange="statesShow(this.value) "
									id="select_states" class="selectpicker" data-live-search="true"
									style="width: 90%"">
									<option value="">
										选择国家
									</option>
									<option value="1">
										老挝
									</option>
									<option value="2">
										缅甸1111111111111111111111
									</option>
									<option value="3">
										泰国
									</option>
									<option value="4">
										菲律宾
									</option>
								</select>
							</div>
							<input maxlength="18" class="num-ipt" name="phoneNum" id="number"
								placeholder="请输入手机号码" onfocus="inputPhone();"
								onkeyup="phoneNumSpace();" type="tel">
						</dd>
					</dl>
					</section>
					<!--手机输入号码框  end-->
				</div>
				<!-- 宽带输入框end -->
				<article class="page b-tb-style main" id="pageRandom">
				<div class="page-body-box">
					<div class="page-body-box">
						<div class="cardlist" id="cardlist">
							<!-- 手机卡列表展示 -->
							<section class="amount-box fixed mobile-num mobileCardList">
							<div style="padding-top: 2px; padding-bottom: 10px;">

								充话费 ：
								<div class="displayText">
									<span>即使到账，方便快捷</span>
								</div>
								<div class="chargesDetails" style="float: right">

									<a class="" >
										<p>
											套餐详情
										</p> </a>
								</div>
							</div>
							<div class="mobile-cardlist cardlista states_laowo"
								style="display: none;">
								<a onclick='select(7.76,10000,"01","1","","",[]);'
									href="javascript:void(0)" data-value="7.76" cardvalcode="01"
									cardvalue="10000" class="amount-list  mr5"><p
										class="true_money">
										10000kip
									</p>
									<p class="original_price">
										售价：7.76元
									</p> </a><a onclick='select(15.52,20000,"02","1","","",[]);'
									href="javascript:void(0)" data-value="15.52" cardvalcode="02"
									cardvalue="20000" class="amount-list  mr5"><p
										class="true_money">
										20000kip
									</p>
									<p class="original_price">
										售价：15.52元
									</p> </a><a onclick='select(38.8,50000,"03","1","","",[]);'
									href="javascript:void(0)" data-value="38.8" cardvalcode="03"
									cardvalue="50000" class="amount-list "><p
										class="true_money">
										50000kip
									</p>
									<p class="original_price">
										售价：38.8元
									</p> </a><a onclick='select(77.6,100000,"04","1","","",[]);'
									href="javascript:void(0)" data-value="77.6" cardvalcode="04"
									cardvalue="100000" class="amount-list mr5"><p
										class="true_money">
										100000kip
									</p>
									<p class="original_price">
										售价：77.6元
									</p> </a>
								<a onclick='select(116.4,150000,"05","1","","",[]);'
									href="javascript:void(0)" data-value="116.4" cardvalcode="05"
									cardvalue="150000" class="amount-list  mr5">
									<p class="true_money">
										150000kip
									</p>
									<p class="original_price">
										售价：116.4元
									</p> </a>
								<a onclick='select(194,250000,"06","1","","",[]);'
									href="javascript:void(0)" data-value="194" cardvalcode="06"
									cardvalue="250000" class="amount-list  ">
									<p class="true_money">
										250000kip
									</p>
									<p class="original_price">
										售价：194元
									</p> </a>
							</div>
							<div class="mobile-cardlist cardlista states_miandian"
								style="display: none;">
								<a onclick='select(4.4,1000,"01","1","","",[]);'
									href="javascript:void(0)" data-value="4.4" cardvalcode="01"
									cardvalue="1000" class="amount-list  mr5"><p
										class="true_money">
										1000缅币
									</p>
									<p class="original_price">
										售价：4.4元
									</p> </a><a onclick='select(13.2,3000,"02","1","","",[]);'
									href="javascript:void(0)" data-value="13.2" cardvalcode="02"
									cardvalue="3000" class="amount-list  mr5"><p
										class="true_money">
										3000缅币
									</p>
									<p class="original_price">
										售价：13.2元
									</p> </a><a onclick='select(22,5000,"03","1","","",[]);'
									href="javascript:void(0)" data-value="22" cardvalcode="03"
									cardvalue="5000" class="amount-list "><p class="true_money">
										5000缅币
									</p>
									<p class="original_price">
										售价：22元
									</p> </a><a onclick='select(44,10000,"04","1","","",[]);'
									href="javascript:void(0)" data-value="44" cardvalcode="04"
									cardvalue="10000" class="amount-list  mr5"><p
										class="true_money">
										10000缅币
									</p>
									<p class="original_price">
										售价：44元
									</p> </a><a onclick='select(88,20000,"05","1","","",[]);'
									href="javascript:void(0)" data-value="88" cardvalcode="05"
									cardvalue="20000" class="amount-list  mr5"><p
										class="true_money">
										20000缅币
									</p>
									<p class="original_price">
										售价：88元
									</p> </a>
								<a onclick='select(220,50000,"06","1","","",[]);'
									href="javascript:void(0)" data-value="220" cardvalcode="06"
									cardvalue="50000" class="amount-list  "><p
										class="true_money">
										50000缅币
									</p>
									<p class="original_price">
										售价：220元
									</p> </a>
							</div>
							<div class="mobile-cardlist cardlista states_taiguo"
								style="display: none;">
								<a onclick='select(11,50,"01","1","","",[]);'
									href="javascript:void(0)" data-value="11" cardvalcode="01"
									cardvalue="50" class="amount-list  mr5"><p
										class="true_money">
										50泰铢
									</p>
									<p class="original_price">
										售价：11元
									</p> </a><a onclick='select(22,100,"02","1","","",[]);'
									href="javascript:void(0)" data-value="22" cardvalcode="02"
									cardvalue="100" class="amount-list  mr5"><p
										class="true_money">
										100泰铢
									</p>
									<p class="original_price">
										售价：22元
									</p> </a><a onclick='select(44,200,"03","1","","",[]);'
									href="javascript:void(0)" data-value="44" cardvalcode="03"
									cardvalue="200" class="amount-list "><p class="true_money">
										200泰铢
									</p>
									<p class="original_price">
										售价：44元
									</p> </a><a onclick='select(66,300,"04","1","","",[]);'
									href="javascript:void(0)" data-value="66" cardvalcode="04"
									cardvalue="10000" class="amount-list  mr5"><p
										class="true_money">
										300泰铢
									</p>
									<p class="original_price">
										售价：66元
									</p> </a><a onclick='select(110,500,"05","1","","",[]);'
									href="javascript:void(0)" data-value="110" cardvalcode="05"
									cardvalue="500" class="amount-list  mr5"><p
										class="true_money">
										500泰铢
									</p>
									<p class="original_price">
										售价：110元
									</p> </a>
								<a onclick='select(220,1000,"06","1","","",[]);'
									href="javascript:void(0)" data-value="220" cardvalcode="06"
									cardvalue="1000" class="amount-list  "><p
										class="true_money">
										1000泰铢
									</p>
									<p class="original_price">
										售价：220元
									</p> </a>
							</div>
							<div class="mobile-cardlist cardlista states_feilvbin"
								style="display: none;">
								<a onclick='select(13.3,100,"01","1","","",[]);'
									href="javascript:void(0)" data-value="13.3" cardvalcode="01"
									cardvalue="100" class="amount-list  mr5"><p
										class="true_money">
										100RM
									</p>
									<p class="original_price">
										售价：13.3元
									</p> </a><a onclick='select(46.55,350,"02","1","","",[]);'
									href="javascript:void(0)" data-value="46.55" cardvalcode="02"
									cardvalue="350" class="amount-list  mr5"><p
										class="true_money">
										350RM
									</p>
									<p class="original_price">
										售价：46.55元
									</p> </a><a onclick='select(59.85,450,"03","1","","",[]);'
									href="javascript:void(0)" data-value="59.85" cardvalcode="03"
									cardvalue="450" class="amount-list "><p class="true_money">
										450RM
									</p>
									<p class="original_price">
										售价：59.85元
									</p> </a><a onclick='select(79.8,600,"04","1","","",[]);'
									href="javascript:void(0)" data-value="79.8" cardvalcode="04"
									cardvalue="600" class="amount-list  mr5"><p
										class="true_money">
										600RM
									</p>
									<p class="original_price">
										售价：79.8元
									</p> </a><a onclick='select(93.1,700,"05","1","","",[]);'
									href="javascript:void(0)" data-value="93.1" cardvalcode="05"
									cardvalue="700" class="amount-list  mr5"><p
										class="true_money">
										700RM
									</p>
									<p class="original_price">
										售价：93.1元
									</p> </a>
								<a onclick=select(133,
									1000, "06", "1", "", "", []);;
href="javascript:void(0)"
									data-value="133" cardvalcode="06" cardvalue="1000"
									class="amount-list  "><p class="true_money">
										1000RM
									</p>
									<p class="original_price">
										售价：133元
									</p> </a>
							</div>
							</section>
						</div>
					</div>
				</div>
				</article>

				<section class="border-1px num-box mobile-num phone-num mob-num">
				<div class="twoActives borAndpad">
					<div class="appDiscounts" style="background: #3196a2;">
						<a class="appDisCon"> <em class=""></em> <span class="appIcon"></span>
							<p>
								确认购买
							</p> <em></em> </a>
					</div>
				</div>
				<div class="systemInfo">
					海外话费充值统一客服：g2107661
					</br>
					柬埔寨-菲律宾-越南话费充值即将开通
				</div>
				</section>
				<div class="copyrightInfo">
					@2018-2020 海外手机话费充值平台版权所有
				</div>
			</div>
		</div>




		<div class="outError" style="display: none">
			<div class="errorTips">
				<span class="tips"></span>
			</div>
		</div>
		<!-- 固定在底部的区域 -->
		<div class="fixedBut">
			<div class="broadbtn">
				<button class="gray" onclick=paychannel();;>
					立即充值
				</button>
			</div>
			<!--底部-->
			<div class="fixBottom">
				<a href="#invoice-tips" class="goInvoice"><img
						src="<c:out value="${cp}"/>/images/recharge.png" alt="充值"></br><span>充值</span>
				</a>
				<a href="#warm-tips" class="goWarmTips"><img
						src="<c:out value="${cp}"/>/images/rechargeRecord.png" alt="充值记录">
					</br><span>充值记录</span> </a>
				<a class="goWarmTips" href="#warm-tips"> <img
						src="<c:out value="${cp}"/>/images/cardQuery.png" alt="卡密查询">
					</br><span>卡密查询</span> </a>
				<a class="goWarmTips" href="#warm-tips"><img
						src="<c:out value="${cp}"/>/images/waiting.png" alt="等待加入">
					</br><span>等待加入</span> </a>
				<a class="goWarmTips" href="#warm-tips"><img
						src="<c:out value="${cp}"/>/images/mine.png" alt="我的">
					</br><span>我的</span> </a>
			</div>
		</div>
		<form id="bankchargeForm" name="bankchargeForm" method="post"
			class="css-form">
			<input id="paystate" name="secstate.state" type="hidden">
			<input class="hiddenPhone" name="commonBean.phoneNo" type="hidden">
			<input class="hiddenProvince" name="commonBean.provinceCode"
				type="hidden">
			<input id="browserVersion" name="browserVersion" value=""
				type="hidden">
			<input id="channelKey" value="" type="hidden">
			<input class="hiddenCbPayType" name="commonBean.cbPayType"
				type="hidden">
			<input id="ticketNew" name="ticketNew" value="ticket" type="hidden">
		</form>

		<form id="broadbandForm" name="broadbandForm" method="post"
			class="css-form">
			<input id="broadbandpaystate" name="secstate.state" type="hidden">
			<!--支付方式-->
			<input class="orgCode" name="commonBean.orgCode" value=""
				type="hidden">
			<input class="channelCode" name="commonBean.channelCode" value=""
				type="hidden">
		</form>
		<form id="goUnipay" name="goUnipay" method="post" class="css-form">

		</form>
		<script language="javascript" type="text/javascript"
			src="<c:out value="${cp}"/>/js/a"></script>
		<script language="javascript" type="text/javascript"
			src="<c:out value="${cp}"/>/js/a_002"></script>

		<script language="javascript" type="text/javascript"
			src="<c:out value="${cp}"/>/js/inspect_v1.js"></script>
		<script language="javascript" type="text/javascript"
			src="<c:out value="${cp}"/>/js/dcs_tag_3g.js"></script>
	</body>
</html>