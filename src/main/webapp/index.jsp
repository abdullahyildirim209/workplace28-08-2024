<%@ page import="java.util.*" %>
<%@ include file="classes/Request.jsp" %>
<%
Request r = new Request();
out.print(r.test());

HashMap<String, String> hm = r.setParametersHm();
out.print("HashMap " + hm);

ArrayList<String> al = r.setParametersAl();
out.print("ArrayList " + al);

TreeMap<String, Object> tm = r.setParametersTreemap();
out.print("TreeMap" + tm);


//out.print(r.getParameterNames());
%>


