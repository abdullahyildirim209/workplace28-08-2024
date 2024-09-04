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
    private Connection conn;

    public Request() {
        test           = "class is working";
        //parameterNames = request.getParameterNames();
        try {
            // Örneğin bir veritabanı bağlantısı açalım
            conn = DriverManager.getConnection("jdbc:yourdatabaseurl", "username", "password");
        } catch (SQLException e) {
            e.printStackTrace();
        }
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

    public String validateUser(String username, String password) {
        String inputUsername = request.getParameter("username");
        String inputPassword = request.getParameter("password");

        if (username.equals(inputUsername) && password.equals(inputPassword)) {
            String token = UUID.randomUUID().toString();
            return "token is" + token;
        } else {
            return "username or password entered is incorrect";
        }
    }

    @Override
    protected void finalize() throws Throwable {
        try {
            if (conn != null && !conn.isClosed()) {
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.finalize();
        }
    }

    public String test() {
        return test;
    }
}
%>




