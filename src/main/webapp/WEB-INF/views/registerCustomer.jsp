<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register Customer</h1>


            <p class="lead">Fill the below information of your own </p>

        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

            <h3>Basic Information</h3>

            <div class="form-group">

                <label for="name">Name</label>
                <form:input path="customerName" id="name" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="email">Email</label>
                <form:input path="customerEmail" id="email" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="phone">Phone</label>
                <form:input path="customerPhone" id="phone" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="username">Username</label>
                <form:input path="username" id="username" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="password">Password</label>
                <form:password path="password" id="password" class="form-Control" />

            </div>

         <h3>Billing Address</h3>
            <div class="form-group">

                <label for="billingStreet">Street Name</label>
                <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="billingApartmentNumber">Apartment Number</label>
                <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="billingCity">City</label>
                <form:input path="billingAddress.city" id="billingCity" class="form-Control" />

            </div>

            <div class="form-group">

                <label for="billingState">State</label>
                <form:input path="billingAddress.state" id="billingState" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="billingCountry">Country</label>
                <form:input path="billingAddress.country" id="billingCountry" class="form-Control" />

            </div>

            <div class="form-group">

                <label for="billingZipcode">Zipcode</label>
                <form:input path="billingAddress.zipCode" id="billingZipcode" class="form-Control" />

            </div>

            <h3>Shipping Address</h3>

            <div class="form-group">

                <label for="shippingStreetName">Street Name</label>
                <form:input path="shippingAddress.streetName" id="shippingStreetName" class="form-Control" />

            </div>
            <div class="form-group">

                <label for="shippingApartmentNumber">Apartment Number</label>
                <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />

            </div>

            <div class="form-group">

                <label for="shippingApartmentNumber">Country</label>
                <form:input path="shippingAddress.country" id="shippingApartmentNumber" class="form-Control" />

            </div>

            <div class="form-group">

                <label for="shippingZipcode">Zipcode</label>
                <form:input path="shippingAddress.zipCode" id="shippingZipcode" class="form-Control" />

            </div>


            <input type="submit" value="Submit" class="btn btn-default">
            <a href="<c:url value="/" />" class="btn btn-default">Cancel</a>
        </form:form>

    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp"%>
