<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">

<title>Login Example</title>
</head>
<body>
	<html:form styleId="testForm" action="/login" focus="userName" method="POST">
		Username : <html:password styleId="username" property="userName" />
		<a class="fa fa-eye" onclick="showInputValue(this)" data-id="username"></a>
		<br>
		Password : <html:password styleId="password" property="password" />
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
		var elements = document.getElementsByClassName("mask");
		
		for (var i = 0; i < elements.length; i++) {
		  	var label = elements[i];
		  
		  	var half = Math.round(label.innerText.length / 2);
			var lastHalfText = label.innerText.slice(label.innerText.length - half);
			var beginHalfText = '*'.repeat(label.innerText.length - half);
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
	window.onload = function() {
		document.getElementById("testForm").username.value = "";
		document.getElementById("testForm").password.value = "";
	};
</script>

</html>