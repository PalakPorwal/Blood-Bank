<%@page import="java.sql.ResultSet"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
    <table id="customers">
        <tr>
            <th>Name</th>
            <th>Mobile Number</th>
            <th>Email</th>
            <th>Blood Group</th>
            
        </tr>
        <tr>
<br>
<center>
  <%
                try
                {
                    Connection con=ConnectionProvider.getCon();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select * from bloodrequest where status!='pending' ");
                    while(rs.next())
                    {
                        
        
            %>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
</tr>
         <%
        }
                }
        catch(Exception e)
        {
            System.out.println(e);
        }
        %>
    
    
    

</center>
    </table>
<br>
<br>
<br>
<br
</body>
</html>