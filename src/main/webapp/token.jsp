<%@ page import="java.util.*" %>
<%@ page import="org.json.JSONObject" %>
<%@ include file="classes/Request.jsp" %>
<%
    Request r = new Request();

    JSONObject result = r.authenticate();
    response.setContentType("application/json");
    out.println(result);
%>
