<%
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  if("palak".equals(username) && "palak123".equals(password))
  {
      response.sendRedirect("home.jsp");
  }
  else
  {
      response.sendRedirect("adminLogin.jsp?msg=invalid");
  }%>
