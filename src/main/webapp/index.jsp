<%@ include file="classes/Request.jsp" %>
<%
    Request r = new Request();
    out.print(r.test());

    HashMap<String, String> hm = r.setParametersHm();
    out.print("HashMap " + hm);

    ArrayList<String> al = r.setParametersAl();
    out.print("ArrayList " + al);

    out.print(r.getParameterNames());

    for (String key : hm.keySet()) {
        out.println("Key: " + key + ", Value: " + hm.get(key));
    }

%>


