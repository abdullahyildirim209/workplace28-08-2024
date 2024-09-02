<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>

<%
    class Request {
        public String test = null;

        public Request() {
            test = "class is working";
        }

        public HashMap<String, String> setParametersHm() {
            HashMap<String, String> hm = new HashMap<String, String>();


            Enumeration parameterNames = request.getParameterNames();
            while (parameterNames.hasMoreElements()) {
                String parameterName = (String) parameterNames.nextElement();
                String parameterValue = request.getParameter(parameterName);
                hm.put(parameterName, parameterValue);
            }

            return hm;
        }

        public ArrayList<String> setParametersAl() {
            ArrayList<String> al = new ArrayList<String>();


            Enumeration parameterNames = request.getParameterNames();
            while (parameterNames.hasMoreElements()) {
                String parameterName = (String) parameterNames.nextElement();
                String parameterValue = request.getParameter(parameterName);
                al.add(parameterName + "=" + parameterValue);
            }

            return al;
        }

        public String test() {
            return test;
        }

        public boolean validateUser(String username, String password) {
            String inputUsername = request.getParameter("username");
            String inputPassword = request.getParameter("password");

            return username.equals(inputUsername) && password.equals(inputPassword);
        }
    }

    //arraylist icinde olusturuldu    tamamlandi
//finalize methodu calisip calismadigini kontrol et
// kontrol loginleri get param kullanip yapildi
// token olusturma ile alakali fonks var mi
// tree map integer veya
//https://jdbc.postgresql.org/documentation/use/
%>




