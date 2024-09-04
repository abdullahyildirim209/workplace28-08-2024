<%@ page import="java.util.*" %>
<%@ include file="classes/Request.jsp" %>
<%
Request r = new Request();

boolean isValidUser = r.validateUser("playstore", "123456");

TreeMap<String,Object> tokenUser = new TreeMap<>();

if (isValidUser) {
    String token = UUID.randomUUID().toString();
    String userId = UUID.randomUUID().toString();
    tokenUser.put(userId,token);
    response.setContentType("application/json");
    out.println("{\"token\":\"" + token + "\"}");
    for (String key : tokenUser.keySet()) {
        out.println( "              " + key + "                 " + tokenUser.get(key).toString());
    }

} else {
    response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
    response.setContentType("application/json");
    out.println("{\"error\":\"The username or password entered is incorrect http 400\"}");
}
%>
