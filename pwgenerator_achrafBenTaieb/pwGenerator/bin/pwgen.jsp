<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="pwgen.jsp" method="GET">
Password Length: <input type="text" name="len">
<input type="submit" value="Submit" />
Password: <%= randomString(len) %>
</form>

<script>
static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
static Random rnd = new Random();

String randomString( int len ){
   StringBuilder sb = new StringBuilder( len );
   for( int i = 0; i < len; i++ ) 
      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
   return sb.toString();
}
</script>
</body>
</html>