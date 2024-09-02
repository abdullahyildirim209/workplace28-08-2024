<%@ include file="classes/Request.jsp" %>
<%@ include file="classes/hashmap.jsp" %>
<%
    boolean isValidUser = "playstore".equals(request.getParameter("username")) && "123456".equals(request.getParameter("password"));

    if (isValidUser) {
        response.setContentType("application/json");
        out.println("{\"token\":\"token5454ayildirim21\"}");
    } else {
        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        response.setContentType("application/json");
        out.println("{\"error\":\"The username or password entered is incorrect http 400\"}");
    }

    out.println("{\"Username and password\":" + askedparmas + "}");
    out.println("{\"In HashMap\":" + hmUserPass + "}");
%>
