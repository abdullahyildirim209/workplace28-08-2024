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

    //public HashMap<String, String> setParametersHm() {
        //HashMap<String, String> hm = new HashMap<String, String>();
        //hm.put("name","Abdullah");
        //hm.put("surname","Yıldırım");
        //return hm;
    //}

    public HashMap<String, String> setParametersHm() {
        HashMap<String, String> hm = new HashMap<String, String>();

        String[] keys = {"name", "surname"};
        String[] values = {"Abdullah", "Yıldırım"};

        for (int i = 0; i < keys.length; i++) {
            hm.put(keys[i], values[i]);
        }
        return hm;
    }

    public ArrayList<String> setParametersAl() {
        ArrayList<String> al = new ArrayList<String>();
        al.add("Abdullah");
        al.add("Yildirim");
        return al;
    }

    public Enumeration getParameterNames() {
        return parameterNames;
    }

    public String test(){
        return test;
    }

    public void printHashMapEntries() {
        HashMap<String, String> hm = setParametersHm();
        for (String key : hm.keySet()) {
            System.out.println("Key: " + key + ", Value: " + hm.get(key));
        }
    }

    public void printArrayListEntries() {
        ArrayList<String> al = setParametersAl();
        for (String element : al) {
            System.out.println("Element: " + element);
        }
    }

}
%>