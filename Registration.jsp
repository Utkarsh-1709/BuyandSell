<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    if(request.getParameter("submit")!=null)
    {
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String email=request.getParameter("email");
        String city=request.getParameter("city");
        String password=request.getParameter("password");
        try{ Connection cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/buesell","root","");
            PreparedStatement ps=cn.prepareStatement("insert into registration values(?,?,?,?,?)");
          int a=0;
          ps.setString(1,fname);
          ps.setString(2,lname);
          ps.setString(3,email);
          ps.setString(4,city);
          ps.setString(5,password);
          a=ps.executeUpdate();
          out.println(a);
        }
        catch(Exception e){
        out.println(e);}
       
    response.sendRedirect("Login.jsp");
    }
          
        
    
%>