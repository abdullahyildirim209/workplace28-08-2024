<%@ page import="java.util.*" %>
<%@ page import="org.json.JSONObject" %>
<%@ include file="classes/Request.jsp" %>
<%
Request r = new Request();
out.println(r.test());

HashMap<String, String> hm = r.setParametersHm();
out.println("HashMap " + hm);

ArrayList<String> al = r.setParametersAl();
out.println("ArrayList " + al);

TreeMap<String, JSONObject> tm = r.setParametersTreemap();
    for (Map.Entry<String, JSONObject> entry : tm.entrySet()) {
        out.println(entry.getKey() + ": " + entry.getValue().toString());
    }
//out.print(r.getParameterNames());
%>


