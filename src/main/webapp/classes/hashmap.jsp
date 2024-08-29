<%@ page import="java.util.HashMap" %>
<%
    // HashMap oluştur
    HashMap<String, String> hmUserPass = new HashMap<>();

    // İstekten parametreleri al (farklı değişken isimleri kullanarak)
    String hmUsername = request.getParameter("username");
    String hmPassword = request.getParameter("password");

    // HashMap'e kullanıcı adı ve şifre ekle
    if (hmUsername != null && hmPassword != null) {
        hmUserPass.put(hmUsername, hmPassword);
    }
%>
