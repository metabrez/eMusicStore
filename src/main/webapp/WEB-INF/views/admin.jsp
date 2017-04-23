<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: shams
  Date: 3/28/2017
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page.</h1>


            <p class="lead">This is a administrator Page. </p>

        </div>

        <c:if test="${pageContext.request.userPrincipal.name !=null}">
        <h2>
            Welcome:${pageContext.request.userPrincipal.name} | <a href="<c:url value="/logout"/> ">Logout</a>
        </h2>
        </c:if>

        <h3>
        <a href="<c:url value="/admin/productInventory" />">Product Inventory</a>
        </h3>

        <p>Here, you can view, check and modify the product Inventory </p>

        <%@include file="/WEB-INF/views/template/footer.jsp"%>
