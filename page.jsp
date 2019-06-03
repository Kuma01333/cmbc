<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="/resources/js/jquery-3.2.1.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/page.css">
<link rel="stylesheet" href="/resources/layui/css/layui.css">
<style type="text/css">
	.dian {
		cursor: pointer;
	}
</style>
<body>
<%--<%--%>
	<%--/* String account = (String)request.getSession().getAttribute("account"); */--%>
	<%--/* if(account==null){--%>
		<%--account = "请登录";--%>
<%--%>--%>
	<div class="nav">
		<div class="body">
			<span class="location">北京</span>
			<ul>
				<li>
				<c:if test="${vipAccount == null}">
					<a href="/login/loginPage.do"><font>你好，请登录</font></a>
				</c:if>
				<c:if test="${vipAccount != null}">
					<a href="login.html"><font>你好，${vipAccount}</font></a>
				</c:if>
					&nbsp;&nbsp;<a class="register" href="javascript:;"><span>免费注册</span></a>
				</li>
				<li><b></b></li>
				<li><a href="###"><font>我的订单</font></a></li>
				<li><b></b></li>
				<c:if test="${vipAccount == null}">
				<li><a href="###"><font>我的京东</font></a></li>
				<li><b></b></li>
				</c:if>
				<c:if test="${vipAccount != null}">
				<li><a href="/message/findMessage.do?id=${id}"><font>我的京东</font></a></li>
				<li><b></b></li>
				</c:if>
				<li><a href="###"><font>京东会员</font></a></li>
				<li><b></b></li>
				<li><a href="###"><font>企业采购</font></a></li>
				<li><b></b></li>
				<li><a href="###"><font>客服服务</font></a></li>
				<li><b></b></li>
				<li><a href="###"><font>网站导航</font></a></li>
				<li><b></b></li>
				<li><a href="###"><font>手机京东</font></a></li>
			</ul>
		</div>
	</div>

	<div class="scan">
		<div class="body">
			<div class="img"><img class="logo" src="/resources/img/logoself.jpg" width=190 height=170></div>
			<div class="input">
				<input type="text" placeholder="翡翠拍卖">
				<a href="###"><div class="camera"></div></a>
				<div class="btn"><a><button></button></a></div>
				<div class="answer">
					<div class="all"></div>
					<div class="box_close"><span class="close">关闭</span></div>
				</div>
			</div>
			<div class="shopcar">
				<a href="shopcar.do"><span>我的购物车</span></a>
				<div class="num">${fn:length(sessionScope.goods) }</div>
			</div>
			<div class="some">
				<ul>
					<li><a href="###"><font>399减100</font></a></li>
					<li><a href="###"><span>买一送一</span></a></li>
					<li><a href="###"><span>割草机</span></a></li>
					<li><a href="###"><span>阿玛尼</span></a></li>
					<li><a href="###"><span>2件199</span></a></li>
					<li><a href="###"><span>孕妇装冬装</span></a></li>
					<li><a href="###"><span>机油</span></a></li>
					<li><a href="###"><span>2件5折</span></a></li>
					<li><a href="###"><span>电热毯双人</span></a></li>
				</ul>
			</div>
			<div class="group">
				<ul>
					<li><a href="###"><span>秒杀</span></a></li>
					<li><a href="###"><span>优惠券</span></a></li>
					<li><a href="###"><span>闪购</span></a></li>
					<li><a href="###"><span>拍卖</span></a></li>
					<li><b></b></li>
					<li><a href="###"><span>服装城</span></a></li>
					<li><a href="###"><span>京东超市</span></a></li>
					<li><a href="###"><span>生鲜</span></a></li>
					<li><a href="###"><span>全球购</span></a></li>
					<li><b></b></li>
					<li><a href="###"><span>京东金融</span></a></li>
				</ul>
			</div>
			<div class="floor">
				<img src="/resources/img/floor.jpg">
			</div>
		</div>
	</div>
	<div class="navshow">
		<div class="body">
			<div class="nav_all">
				<ul>
					<li><a href=""><span>家用电器</span></a></li>
					<li><a href=""><span>手机</span></a> / <a href=""><span>运营商</span></a> / <a href=""><span>数码</span></a></li>
					<li><a href=""><span>电脑</span></a> / <a href=""><span>办公</span></a></li>
					<li><a href=""><span>家居</span></a> / <a href=""><span>家具</span></a> / <a href=""><span>家装</span></a> / <a href=""><span>厨具</span></a></li>
					<li><a href=""><span>男装</span></a> / <a href=""><span>女装</span></a> / <a href=""><span>童装</span></a> / <a href=""><span>内衣</span></a></li>
					<li><a href=""><span>美妆个护</span></a> / <a href=""><span>宠物</span></a></li>
					<li><a href=""><span>女鞋</span></a> / <a href=""><span>箱包</span></a> / <a href=""><span>钟表</span></a> / <a href=""><span>珠宝</span></a></li>
					<li><a href=""><span>男鞋</span></a> / <a href=""><span>运动</span></a> / <a href=""><span>户外</span></a></li>
					<li><a href=""><span>汽车</span></a> / <a href=""><span>汽车用品</span></a></li>
					<li><a href=""><span>母婴</span></a> / <a href=""><span>玩具乐器</span></a></li>
					<li><a href=""><span>食品</span></a> / <a href=""><span>酒类</span></a> / <a href=""><span>生鲜</span></a> / <a href=""><span>特产</span></a></li>
					<li><a href=""><span>医药保健</span></a> / <a href=""><span>计生情趣</span></a></li>
					<li><a href=""><span>图书</span></a> / <a href=""><span>音像</span></a> / <a href=""><span>电子书</span></a></li>
					<li><a href=""><span>机票</span></a> / <a href=""><span>酒店</span></a> / <a href=""><span>旅游</span></a> / <a href=""><span>生活</span></a></li>
					<li><a href=""><span>理财</span></a> / <a href=""><span>众筹</span></a> / <a href=""><span>白条</span></a> / <a href=""><span>保险</span></a></li>
				</ul>
			</div>
			<div class="nav_center">
				<div class="carousel" id="carousel">
					<a href="###"><img src="/resources/img/carousel1.jpg"></a>
					<a href="###"><img src="/resources/img/carousel2.jpg"></a>
					<a href="###"><img src="/resources/img/carousel3.jpg"></a>
					<a href="###"><img src="/resources/img/carousel4.jpg"></a>
					<a href="###"><img src="/resources/img/carousel5.jpg"></a>
					<a href="###"><img src="/resources/img/carousel6.jpg"></a>
					<a href="###"><img src="/resources/img/carousel7.jpg"></a>
					<a href="###"><img src="/resources/img/carousel8.jpg"></a>
					<div class="carousel_btn" id="carousel_btn">
						<div class="dian"></div>
						<div class="dian"></div>
						<div class="dian"></div>
						<div class="dian"></div>
						<div class="dian"></div>
						<div class="dian"></div>
						<div class="dian"></div>
						<div class="dian"></div>
					</div>
				</div>
				<div class="eat"><a href="###"><img src="/resources/img/moreone.jpg"></a></div>
				<div class="flyer"><a href="###"><img src="/resources/img/flyer.jpg"></a></div>
			</div>
			<div class="operation">
				<div class="use">
					<div class="c">
						<div class="head_portrait">
							<div class="head"><div class="head_head"></div></div>
							<c:if test="${vipAccount == null}">
							<div class="welcome"><span>Hi，欢迎来到京东</span></div>
							<span><a href="/login/loginPage.do">登录 </a><a class="register" href="javascript:;"> 注册</a></span>
							</c:if>
							<c:if test="${vipAccount != null}">
							<div class="welcome"><span>Hi，${vipAccount}</span></div>
							<span><a href="../exit">退出登录</a><a class="register" href="javascript:;"> 注册</a></span>
							</c:if>
						</div>
						<div class="new_old">
							<a href="###"><div class="newone"><span>新人福利</span></div></a>
							<a href="###"><div class="oldone"><span>PLUS会员</span></div></a>
						</div>
					</div>
				</div>
				<div class="notice">
					<div class="announcement">
						<div class="c">
							<a href="###"><span>促销</span></a>
							<b></b>
							<a href="###"><span>公告</span></a>
							<a href="###"><span class="more">更多</span></a>
						</div>
					</div>
					<div class="c">
						<p><a href="###">MIKIHOUSE入驻京东全球购</a></p>
						<p><a href="###">母亲节鲜花包邮还送花瓶！</a></p>
						<p><a href="###">自营药品 满129减30元</a></p>
						<p><a href="###">每日享折扣 京东品质游</a></p>
					</div>
				</div>
				<div class="buy" id="buy">
					<div class="cen">
						<a href="###">
							<div class="box">
								<div class="pho"></div>
								<span>话费</span>
							</div>
						</a>
						<a href="###">
							<div class="box">
								<div class="plane"></div>
								<span>飞机</span>
							</div>
						</a>
						<a href="###">
							<div class="box">
								<div class="grogshop"></div>
								<span>酒店</span>
							</div>
						</a>
						<a href="###">
							<div class="box1">
								<div class="game"></div>
								<span>游戏</span>
							</div>
						</a>
					</div>
					<div class="cen">
						<a href="###">
							<div class="box">
								<div class="compane"></div>
								<span class="text">企业购</span>
							</div>
						</a>
						<a href="###">
							<div class="box">
								<div class="try"></div>
								<span class="text">加油卡</span>
							</div>
						</a>
						<a href="###">
							<div class="box">
								<div class="movie"></div>
								<span class="text">电影票</span>
							</div>
						</a>
						<a href="###">
							<div class="box1">
								<div class="firecar"></div>
								<span class="text">火车票</span>
							</div>
						</a>
					</div>
					<div class="cen">
						<a href="###">
							<div class="box">
								<div class="more"></div>
								<span>众筹</span>
							</div>
						</a>
						<a href="###">
							<div class="box">
								<div class="money"></div>
								<span>理财</span>
							</div>
						</a>
						<a href="###">
							<div class="box">
								<div class="gift"></div>
								<span class="text">礼品卡</span>
							</div>
						</a>
						<a href="###">
							<div class="box1">
								<div class="brow"></div>
								<span>白条</span>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="/resources/js/page.js"></script>
<script type="text/javascript" src="/resources/layui/layui.js"></script>
<script>
    layui.use(['form','jquery','layer','laydate'], function() {
        var $ = layui.jquery;
        var form = layui.form();
        var layer = layui.layer;

        $(".register").on("click", function () {
            var id="";
            layer.open({
                title: '注册 - '
                , area: ['800px', '800px']
                , type: 2 //content内容为一个连接
                , content: '/vip/startregister.do?id='+id
            });

        })

       /* form.on('select(findMessage)',function () {
            var message = $(".message").val();
            layer.msg(message);
        });*/

//            $.ajax({
//                type: "POST",
//                url: "/vip/findCity.do?provinceId="+provinceId,  //后台程序地址
//                success:function (data) {
//                    // alert(data);
//                    $("#cityId").text("");
//                    for(var i=0;i<data.length;i++){
//                        var ka=" <option  value='"+data[i].cityID+"' >"+data[i].city+"</option>";
//                        $("#cityId").append(ka);
//                        form.render();
//                    }
//                }
//            })




//		$("#messageAddress").on("click", function () {
//			var id="
//			layer.open({
//				title: '添加地址'
//				, area: ['600px', '600px']
//				, type: 2 //content内容为一个连接
//				, content: '/vip/startregister.do?id='+id
//			});
//		})
//        $("#messageBank").on("click", function () {
//            var id=""
//            layer.open({
//                title: '添加银行卡'
//                , area: ['600px', '600px']
//                , type: 2 //content内容为一个连接
//                , content: '/message/messageBank.do?id='+id
//            });
//        })


    });


</script>
</html>
