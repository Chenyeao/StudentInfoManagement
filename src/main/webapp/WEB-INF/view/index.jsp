<!DOCTYPE html>
<html lang="en">
<head>
	<%@ page contentType="text/html;charset=utf-8" language="java"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="shortcut icon" href="/static/favicon.ico"/>
	<link rel="bookmark" href="/static/favicon.ico"/>
	<script src="/static/js/jquery.js"></script>
<title>学生信息管理系统登录</title>
<script type="text/javascript">
	function resetValue(){
		document.getElementById("account").value="";
		document.getElementById("password").value="";
	}
</script>
</head>
<body>
	<div align="center" style="padding-top: 50px;">
		<table  width="1200" height="600" background="/static/images/login2.jpg" >
			<tr height="250">
				<td colspan="4"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td width="10%">账 号 ：</td>
				<td><input type="text"  name="account" id="account"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td width="10%">密  码：</td>
				<td><input type="password"  name="password" id="password"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td width="10%"> <input type="submit"  value="登 录" onclick="login()"></td>
				<td><input type="button" value="重 置" onclick="resetValue()"/></td>
				<td width="30%"></td>
			</tr>

			<tr >
				<td></td>
			</tr>
		</table>
		<script>
            document.onkeydown = function(event){
                var e = event || window.event || arguments.callee.caller.arguments[0];
                if(e && e.keyCode==13){ // enter 键

                    login();
                }
            };

			function login() {
                var account=$("#account").val();
                var password=$("#password").val();
                if(account==""||account==null)
				{
                    alert("请输入账号");
                    return ;
				}
                if(password==""||password==null) {
                    alert("请输入密码");
                    return;
                }
				$.ajax({
						type:'post',
						url:'/login',
						data: "account="+account+"&password="+password,
						success:function (data) {
						    if(data["one"]==1)
							{
							    alert("登录成功");
							    window.location.href="/management/loginSuccess";
							}else {
                                alert("登录失败");
                                window.location.href="/management/loginFail";
							}
						}

					})

            }


		</script>

	</div>

</body>
</html>
