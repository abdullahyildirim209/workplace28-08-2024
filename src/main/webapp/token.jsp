<%@ page import="java.util.*" %>
<%@ include file="classes/Request.jsp" %>
<%
Request r = new Request();

    String result = r.validateUser("playstore", "123456");
    response.setContentType("application/json");
    out.println(result);
%>
