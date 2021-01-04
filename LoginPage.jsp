<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.sql.DriverManager"%>

<%
try{
    Connection cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/buesell","root","");
                Vector<String> vec = new Vector<String>(); 
            PreparedStatement ps=cn.prepareStatement("select Email from registration");
            String mail=request.getParameter("email");
            ResultSet rs=ps.executeQuery();
            int i=0;
            while(rs.next())
            {
                vec.add(rs.getString(1));
                if(rs.getString(1).equalsIgnoreCase(mail))
                {i=1;}
                
                
            }
            if(i==1)
            {
                out.println("matched");
                response.sendRedirect("ShopStore.jsp");
            }
//             Enumeration enu = vec.elements();
//              while (enu.hasMoreElements()) { 
//            out.println(enu.nextElement()); }
           
            
            
            
}
catch(Exception e)
{
    
}


%>