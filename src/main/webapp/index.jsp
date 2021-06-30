<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="main.java.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/6/2021
  Time: 8:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    List<Customer> customers=new ArrayList<>();
    customers.add(new Customer("Phạm Tuấn Thảo","06/04/2001","https://kenh14cdn.com/2020/6/11/lythanhco983089727148871457275272847624881642748543n-1591861538137487491670.jpg"));
    customers.add(new Customer("Phạm Bích Hồng","19/05/2001","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0d7BilQjmLG5U354ri-1R9hxyrwSl0dFOOw&usqp=CAU"));
    customers.add(new Customer("Phạm Hoàng","13/35/24343","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0d7BilQjmLG5U354ri-1R9hxyrwSl0dFOOw&usqp=CAU"));
    request.setAttribute("customers",customers);

  %>
  <table>
    <tr>
      <th colspan="3">Danh sách khách hàng</th>
    </tr>
    <tr>
      <th>Tên</th>
      <th>Ngày sinh</th>
      <th>Ảnh</th>
    </tr>
   <c:forEach var="customer" items="#{customers}">
     <tr>
       <td>${customer.getName()}</td>
       <td>${customer.getDate()}</td>
       <td><img width="300px" height="150px" src="<c:out value="${customer.getImg()}"/>" alt=""></td>

     </tr>
   </c:forEach>

  </table>
  </body>
</html>
