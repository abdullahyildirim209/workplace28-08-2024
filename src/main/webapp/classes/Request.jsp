<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<String> askedparmas = new ArrayList<>();

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null) {
        askedparmas.add(username);
    }

    if (password != null) {
        askedparmas.add(password);
    }
%>