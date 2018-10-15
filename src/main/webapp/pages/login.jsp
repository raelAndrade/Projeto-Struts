<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
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
