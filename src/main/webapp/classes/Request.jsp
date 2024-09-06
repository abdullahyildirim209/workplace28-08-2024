<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>

<%
class Request {
    public String test = null;
    private Enumeration parameterNames;


    public Request() {
        test           = "class is working";
        //parameterNames = request.getParameterNames();
    }

    public HashMap<String, String> setParametersHm() {
        HashMap<String, String> hm = new HashMap<String, String>();
        parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String parameterName = (String) parameterNames.nextElement();
            String parameterValue = request.getParameter(parameterName);
            hm.put(parameterName, parameterValue);
        }

        return hm;
    }

    public TreeMap<String, JSONObject> setParametersTreemap() {
        TreeMap<String, JSONObject> tm = new TreeMap<String, JSONObject>();
        HashMap<String, String> hm = setParametersHm();
        JSONObject jsonObject = new JSONObject(hm);
        tm.put("parameters", jsonObject);
        return tm;
    }

    public ArrayList<String> setParametersAl() {
        ArrayList<String> al = new ArrayList<String>();
        parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String parameterName  = (String) parameterNames.nextElement();
            String parameterValue = request.getParameter(parameterName);
            al.add(parameterValue);
        }

        return al;
    }

    public JSONObject authenticate() {
        String inputUsername = request.getParameter("username");
        String inputPassword = request.getParameter("password");
        //eger json bir veri gonderldiyse json ile de islem yapabilecek hale getir
        String validUserName = "playstore";
        String validPassword = "123456";

        if (inputUsername.equals(validUserName) && inputPassword.equals(validPassword)) {
            return token(200);
        } else {
            return token(401);
        }
    }

    public JSONObject token(int HttpStatus){
        JSONObject jsonObject = new JSONObject();
        if(HttpStatus == 200){
            String token = UUID.randomUUID().toString();
            jsonObject.put("status",200);
            jsonObject.put("access_token",token);
        } else if (HttpStatus == 401) {
            jsonObject.put("status",401);
            jsonObject.put("message","unauthorized access"+request.getParameter("username"));
        }
        return jsonObject;
    }

    public String test() {
        return test;
    }
}
%>




