<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");


    boolean isValidUser = "playstore".equals(username) && "123456".equals(password);


    if (isValidUser) {

            response.setStatus(HttpServletResponse.SC_OK);

            response.setContentType("application/json");

            response.setCharacterEncoding("UTF-8");
            out.print("{\"token\":\"token5454ayildirim21\"}");
        } else {

            response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            out.print("{\"error\":\"girlien password veya username yanlıs\"}");
        }


%>
