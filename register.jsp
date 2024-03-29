<%--
  Created by IntelliJ IDEA.
  User: Lanou3G
  Date: 2017/7/24
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css">
    <link rel="stylesheet" href="/resources/css/register.css">
</head>
<body>
<div class="nav">
    <div class="body">
        <div class="logo"><img src="/resources/img/logoself.jpg" width=160 height=50></div>
        <span class="welcome">欢迎注册</span>
        <div class="login">
            <span class="had">已有账号？</span><a href="login.html">请登录</a>
        </div>
    </div>
</div>
<fieldset class="layui-elem-field" >
    <legend></legend>
    <div class="layui-field-box" >

        <form class="layui-form" >
            <!-- <input type="hidden" id="flage" name="flage" value="true">
             -->
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" id="vipAccount" name="vipAccount" lay-verify="title" autocomplete="off" placeholder="请输入用户名" class="layui-input">
                </div>
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="realName" lay-verify="title" autocomplete="off" placeholder="请输入姓名" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">设置密码</label>
                <div class="layui-input-inline">
                    <input type="password" name="vipPassword" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">确认密码</label>
                <div class="layui-input-inline">
                    <input type="password" name="vipPassword" lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div>
            </div>



            <div class="layui-form-item">
                <label class="layui-form-label">验证身份证</label>
                <div class="layui-input-inline">
                    <input type="text" id="idCard" name="idCard" lay-verify="identity" placeholder="" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">验证邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">电话1</label>
                <div class="layui-input-inline">
                    <input type="tel" name="phoneOne" lay-verify="phone" autocomplete="off" class="layui-input">
                </div>
                <label class="layui-form-label">电话2</label>
                <div class="layui-input-inline">
                    <input type="tel" name="phoneTwo" lay-verify="phone" autocomplete="off" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">收货地址</label>
                <div class="layui-input-inline">
                    <select id="provinceId" name="provinceId" lay-filter="findCity">
                        <option value="">请选择省</option>
                            <c:forEach items="${list}" var="item">
                                <option value="${item.provinceID}">${item.province}</option>
                            </c:forEach>
                        </#list>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select id="cityId" name="cityId">
                        <option value="">请选择市</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
            <label class="layui-form-label">详细地址</label>
            <div class="layui-input-inline">
                <input type="text" name="addrInfo" lay-verify="title" autocomplete="off" placeholder="请输入地址" class="layui-input">
            </div>
            <label class="layui-form-label">注册日期</label>
            <div class="layui-input-inline">
                <input type="text" name="regDate" id="date" lay-verify="date" placeholder="yyyy-mm-dd" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this})">
            </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">会员类型</label>
                <div class="layui-input-inline">
                    <select name="vipType">
                        <option value="">请选择类型</option>
                        <option value="100">手机</option>
                        <option value="200">网站</option>
                        <option value="300">线下</option>
                    </select>
                </div>
                <label class="layui-form-label">银行卡类型</label>
                <div class="layui-input-inline">
                    <select name="bankCardType">
                        <option value="100" select>借记卡</option>
                        <option value="200">信用卡</option>
                        <option value="300">储蓄卡</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">银行卡卡号</label>
                <div class="layui-input-inline">
                    <input type="text" name="bankCaidNo" lay-verify="title" autocomplete="off" placeholder="请输入银行卡卡号" class="layui-input">
                </div>
                <label class="layui-form-label">银行名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="bankName" lay-verify="title" autocomplete="off" placeholder="请输入银行卡名称" class="layui-input">
                </div>
            </div>





            <div class="layui-form-item">
                <label class="layui-form-label">是否可用</label>
                <div class="layui-input-inline">
                    <select id="isUsed" name="isUsed" lay-verify="required">
                        <option value="" selected>请选择</option>
                        <option value="y">可用</option>
                        <option value="n">禁用</option>
                    </select>
                </div>
                <label class="layui-form-label">生日</label>
                <div class="layui-input-inline">
                    <input type="text" name="vipBirthday"  lay-verify="date" placeholder="yyyy-mm-dd" autocomplete="off" class="layui-input" onclick="layui.laydate({elem: this})">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-normal"  lay-submit lay-filter="addVip">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary" lay-filter="emptyMenu">重置</button>
                </div>
            </div>
        </form>

    </div>
    <div class="choose">
        <input type="checkbox" name=""><span>阅读并同意<a href="###">《京东用户注册协议》</a> <a href="###">《隐私政策》</a></span>
    </div>

</fieldset>
<script type="text/javascript" src="/resources/layui/layui.js"></script>
<%--<script type="text/javascript" src="/resources/js/register.js"></script>--%>
<script>
    //    //Demo
    //    // 待学生自主完成
    layui.use(['form','jquery','layer','laydate'], function(){
        var $ = layui.jquery;
        var form = layui.form();
        var layer = layui.layer;

        $("#vipAccount").on("blur",function(){
            var vipAccount=$("#vipAccount").val();
            //layer.msg(vipAccount)
            $.ajax({
                type:"post",
                url:"/vip/findVipAccount.do?vipAccount="+vipAccount,
                success:function (date) {
                    if(date.result =='success'){
                        layer.msg("账号可用")
                    }else if(date.result =='error'){
                        layer.msg("账号不可为空")
                    }else{
                        layer.msg("账号重复")
                    }
                }
            })
        });
        $("#idCard").on("blur",function(){
            var idCard=$("#idCard").val();
            $.ajax({
                type:"post",
                url:"/vip/findIdCard.do?idCard="+idCard,
                success:function (date) {
                    if(date.result=='success'){
                        layer.msg("身份证可用")
                    }else if(date.result=='error'){
                        layer.msg("身份证不可为空")
                    }else{
                        layer.msg("身份证重复")
                    }
                }
            })
        });


        form.on('select(findCity)',function () {
            var provinceId=$("#provinceId").val();
            $.ajax({
                type: "POST",
                url: "/vip/findCity.do?provinceId="+provinceId,  //后台程序地址
                success:function (data) {
                    // alert(data);
                    $("#cityId").text("");
                    for(var i=0;i<data.length;i++){
                        var ka=" <option  value='"+data[i].cityID+"' >"+data[i].city+"</option>";
                        $("#cityId").append(ka);
                        form.render();
                    }
                }
            })
            form.render();

        });
        //监听提交
        form.on('submit(addVip)', function(params){
            //表单数据
            /* var username = $("#username").val();
             var password = $("#password").val();
             var gender = $("input[name='gender']:checked").val();
             var organization = $("#organization").val();*/

            //等同于上面注释掉的部分
            var data = $("form").serializeArray();

            $.ajax({
                type: "POST",
                url: "/vip/addVip.do",  //后台程序地址
                data: data,  //需要post的数据
                success: function(data){           //后台程序返回的标签，比如我喜欢使用1和0 表示成功或者失败
                    if (data.result == 'success'){   //如果成功了, 则关闭当前layer
                        layer.msg('注册成功',{
                            icon: 1,
                            time: 1000 //1秒关闭（如果不配置，默认是3秒）
                        },function(){//
                            //do something
                            //注册成功后，自动关闭当前注册页面
                            //先得到当前iframe层的索引
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                            //parent.layer.closeAll("iframe");
                        });
                    }else{
                        layer.msg('注册失败')

                    }
                }
            });
            return false;//return false 表示不通过页面刷新方式提交表单
        });


    });
</script>
</body>

</html>
