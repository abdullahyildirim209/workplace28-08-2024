<%@ include file="classes/Request.jsp" %>
<%
    boolean isValidUser = "playstore".equals(request.getParameter("username")) && "123456".equals(request.getParameter("password"));

    if (isValidUser) {


        response.setContentType("application/json");
        out.print("{\"token\":\"token5454ayildirim21\"}");
    } else {
        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        response.setContentType("application/json");
        out.print("{\"error\":\"400\",\"message\":\"Girilen password veya username yanlış\"}");
    }


    out.print("{\"Username and password\":" + askedparmas + "}");
%>
