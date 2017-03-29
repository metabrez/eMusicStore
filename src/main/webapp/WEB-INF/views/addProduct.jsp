<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the belows information to add the products: </p>

        </div>
<form:form action="#" method="post" commandName="prouct">

        <div class="form-group">

            <label for="name">Name<label>
                <form:input path="productName" id="name" class="form-Control"/>

            </div>
        </form:form>
    </div>
</div>

            <%@include file="/WEB-INF/views/template/footer.jsp"%>
