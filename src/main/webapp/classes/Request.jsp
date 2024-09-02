<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>

<%
class Request{
    public String test = null;
    private Enumeration parameterNames;

    public Request() {
        test = "class is working";
        parameterNames = request.getParameterNames();
    }

    public HashMap<String, String> setParametersHm() {
        HashMap<String, String> hm = new HashMap<String, String>();
        //hm.put("name","Abdullah");
        //hm.put("surname","Yıldırım");
        while(parameterNames.hasMoreElements()){
            String parameterName  = (String) parameterNames.nextElement();
            String parameterValue = request.getParameter(parameterName);
            hm.put(parameterName,parameterValue);
        }
        return hm;
    }

    public ArrayList<String> setParametersAl() {
        ArrayList<String> al = new ArrayList<String>();
        al.add("Abdullah");
        al.add("Yildirim");
        return al;//ayni sekilde hm nin
    }

    public Enumeration getParameterNames() {
        return parameterNames;
    }

    public String test(){
        return test;
    }
    
//finalize methodu calisip calismadigini kontrol et
// kontrol loginleri get param kullanip
// token olusturma ile alakali fonks var mi
// tree map integer veya
//https://jdbc.postgresql.org/documentation/use/


}
%>