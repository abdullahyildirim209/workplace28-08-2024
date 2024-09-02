<%@ include file="classes/Request.jsp" %>
<%
    Request r = new Request();

    boolean isValidUser = r.validateUser("playstore", "123456");

    if (isValidUser) {
        response.setContentType("application/json");
        out.println("{\"token\":\"token5454ayildirim21\"}");
    } else {
        response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        response.setContentType("application/json");
        out.println("{\"error\":\"The username or password entered is incorrect http 400\"}");
    }

%>
