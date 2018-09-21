<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

<title>Login Example</title>

<script type="text/javascript">
	var ua = window.navigator.userAgent;
	var msie = ua.indexOf("MSIE ");
	if (msie > 0) {
		//IE7 support for querySelectorAll 
		(function(d,s){d=document,s=d.createStyleSheet();d.querySelectorAll=function(r,c,i,j,a){a=d.all,c=[],r=r.replace(/\[for\b/gi,'[htmlFor').split(',');for(i=r.length;i--;){s.addRule(r[i],'k:v');for(j=a.length;j--;)a[j].currentStyle.k&&c.push(a[j]);s.removeRule(0)}return c}})();
	}
</script>

</head>
<body>
<%
	HttpSession loggedUserGeneralData = request.getSession();
	if(loggedUserGeneralData != null) {
		System.out.println("Before clean");
		System.out.println(loggedUserGeneralData.getAttribute("loginForm"));
		
		loggedUserGeneralData.setAttribute("loginForm", null);
		
		System.out.println("After clean");
		System.out.println(loggedUserGeneralData.getAttribute("loginForm"));
	}
%>
	<html:form styleId="testForm" action="/login" focus="userName" method="POST">
		Username : 
		<html:password styleId="username" property="userName" />
		<a class="fa fa-eye" onclick="showInputValue(this)" data-id="username"></a>
		<br>
		Password : 
		<html:password styleId="password" property="password" />
		<a class="fa fa-eye" onclick="showInputValue(this)" data-id="password"></a>
		<br>
		<html:submit value="login" />
		<br>
		<br>
		<br>
		<label class="mask">jether rodrigues <%-- <bean:write class="mask" name="password" property="password" />  --%>
		</label>
		<br>
		<label class="mask">jether rodrigues <%-- <bean:write class="mask" name="password" property="password" />  --%>
		</label>
		
	</html:form>
</body>

<script>
	function showInputValue(element) {
		var input = document.getElementById(element.getAttribute("data-id"));
		
		if (input.type === 'password') {
			input.type = 'text';
			element.classList.remove('fa-eye');
			element.classList.add('fa-eye-slash');
		} else {
			input.type = 'password';
			element.classList.remove('fa-eye-slash');
			element.classList.add('fa-eye');
		}
	}
</script>

<script type="text/javascript">	
	maskInputDetail();

	function maskInputDetail() {
		//var elements = document.getElementsByClassName("mask");
		var elements = document.querySelectorAll('.mask');
		
		for (var i = 0; i < elements.length; i++) {
		  	var label = elements[i];
		  
		  	var half = Math.round(label.innerText.length / 2);
			var lastHalfText = label.innerText.slice(label.innerText.length - half);
			
			var beginHalfText = '*';
			for(var j=0; j < (label.innerText.length - half); j ++) {
				beginHalfText += '*';
			}

			label.innerHTML = beginHalfText + lastHalfText;
		}

		/* Array.from(document.getElementsByClassName('mask')).forEach(label => {
			var half = Math.round(label.innerText.length / 2);
			var lastHalfText = label.innerText.slice(label.innerText.length - half);
			var beginHalfText = '*'.repeat(label.innerText.length - half);
			label.innerHTML = beginHalfText + lastHalfText;
		}); */
	}
</script>

<script>
	/* window.onload = function() {
		document.getElementById("testForm").username.value = "";
		document.getElementById("testForm").password.value = "";
	}; */

</script>

</html>