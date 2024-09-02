<%@ include file="classes/Request.jsp" %>
<%
    Request r = new Request();
    out.print(r.test());

    HashMap<String, String> hm = r.setParametersHm();
    out.print(hm);

    ArrayList<String> al = r.setParametersAl();
    out.print(al);

    out.print(r.getParameterNames());

    for (String key : hm.keySet()) {
        out.println("Key: " + key + ", Value: " + hm.get(key));
    }

%>


