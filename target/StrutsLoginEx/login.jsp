<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Example</title>
</head>
<body>
    <html:form action="/login" focus="userName">
		Username : <html:password styleId="ssn" property="userName" maxlength="4"/>
        <br>
		Password : <html:password property="password" />
        <br>
        <html:submit value="login" />
    </html:form>
</body>


<script>
    var ssn = document.getElementById("ssn");
    ssn.addEventListener('input', ssnMask, false);
    var ssnFirstFive = "";
    var secondHalf = "";
    var fullSSN = "";

    function ssnMask(){
        if (ssn.value.length <= 5){
            ssn.type = 'password';
        }
        else{
            detectChanges();
            secondHalf = ssn.value.substring(4);
            ssn.type = 'text';
            ssn.value = "••••";
            ssn.value += secondHalf;
            fullSSN = ssnFirstFive + secondHalf;
        }
        console.log(fullSSN);
    }

    function detectChanges() {
        for (var i = 0; i < 4; i++){
            if (ssn.value[i] != "•"){
                ssnFirstFive = ssnFirstFive.substring(0, i) + ssn.value[i] + ssnFirstFive.substring(i+1);
            }
        }
    }
</script>

</html>