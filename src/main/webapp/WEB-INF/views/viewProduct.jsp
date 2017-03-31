<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Details</h1>


            <p class="lead">Here is the detail informmation of the product </p>

        </div>
        <div class="container">

            <div class="row">

                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/>" alt="image" style="width:100%"/>
            </div>
                <div class="col-md-5">
                    <p>${product.productName}</p>
                    <p>${product.productDesription}</p>
                    <p>
                        <strong>Manufacture <strong : ${product.productManufacturer}
                    </p>
                    <p>
                    <strong>Category<strong> : ${product.productCategory}
                    </p>
                    <p>
                    <strong>Condition<strong> : ${product.productCondition}
                    </p>

                    <h4> : ${product.productPrice}USD </h4>


                </div>

        </div>

        <%@include file="/WEB-INF/views/template/footer.jsp"%>
