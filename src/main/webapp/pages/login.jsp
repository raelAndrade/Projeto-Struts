<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<%@page import="com.loginapp.util.NameValidator" %>
<html>
<head>
<script type="text/javascript">
	function login() {
		document.forms[0].action = "Login.do?method=loginUser";
		document.forms[0].submit();
	}
</script>
</head>
<body>
	<%
		NameValidator validator = null;
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i=0; i < cookies.length; i++){
				String name = cookies[i].getName();
				String value = cookies[i].getValue();
			    System.out.println(String.format("O cookie [ %s ] está ativo e possui o valor [ %s ].", name, value));
			    
			    if("JSESSIONID".equals(name)) {
			    	validator = new NameValidator("Jether");
					if(!validator.isNameEqualsTo(value)) {
						%>
							<script type="text/javascript">
								alert("O nome não é igual!");
								/* window.location.replace("http://localhost:8080/issues/"); */
							</script>
						<% 
					}
			    }
		    }
		}
	%>
	<h1>Struts Login Application</h1>
	<html:form action="Login">
		<div style="padding: 16px">
			<html:errors property="username" />
			<html:errors property="password" />
		</div>
		<div style="padding: 16px">
			User Name
			<html:text property="username" size="20" maxlength="20" />
			<br></br> 
			Password
			<html:password property="password" size="20" maxlength="20" />
		</div>
		<div style="padding: 16px">
			<div style="float: left; padding-right: 8px;">
				<html:submit onclick ="javascript:login();" value="LOGIN"></html:submit>
			</div>
		</div>
	</html:form>
</body>
</html>
