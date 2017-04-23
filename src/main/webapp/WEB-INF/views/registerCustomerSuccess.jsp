<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">

    <div class="container">

        <section class="jumbotron">
            <div class="container">

                <h1>Customer Registered succssfully</h1>
                <p>All the selected product in your shoping cart</p>
            </div>
        </section>

        <section class="container">

            <p><a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a></p>


        </section>
    </div>
</div>

<script src="<c:url value="/resources/js/controller.js"/> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>