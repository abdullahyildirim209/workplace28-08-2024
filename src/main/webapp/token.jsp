<%@ page import="java.util.UUID" %>
<%@ include file="classes/Request.jsp" %>
<%
    Request r = new Request();

    boolean isValidUser = r.validateUser("playstore", "123456");

    if (isValidUser) {
        String token = UUID.randomUUID().toString();
        response.setContentType("application/json");
        out.println("{\"token\":\"" + token + "\"}");
    } else {
        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        response.setContentType("application/json");
        out.println("{\"error\":\"The username or password entered is incorrect http 400\"}");
    }

%>
