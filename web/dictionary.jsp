<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html; charset = UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
      Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("Hello" , "xin chao");
    dic.put("How", "The nao");
    dic.put("Book","Quyen sach");
    dic.put("Computer","May tinh");

    String search = request.getParameter("word");
    String result = dic.get(search);

    if(result != null){
        out.println("Word : " + search);
        out.println("Result : " + result);
    }else {
        out.println(" Not found");
    }
%>
</body>
</html>

