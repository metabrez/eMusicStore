<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the belows information to add the products: </p>

        </div>

<form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">

        <div class="form-group">

            <label for="name">Name</label><form:errors path="productName" cssStyle="color: red"/>
                <form:input path="productName" id="name" class="form-Control" />

            </div>

    <div class="form-group">

        <label for="category">Category</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record"/>Record</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory"/>Accessory</label>
        <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value=""/></label>
    </div>
    <div class="form-group">

        <label for="description">Description</label>
                <form:textarea path="productDesription" id="description" class="form-Control"/>

    </div>
    <div class="form-group">

        <label for="price">Price</label><form:errors path="productPrice" cssStyle="color:#ff0000"/>
                <form:input path="productPrice" id="price" class="form-Control"/>

    </div>

        <div class="form-group">

            <label for="category">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Used</label>
        </div>

    <div class="form-group">

        <label for="category">Status</label>
        <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>Active</label>
        <label class="checkbox-inline"><form:radiobutton path="productCondition" id="status" value="inactive"/>Inactive</label>
    </div>
    <div class="form-group">

        <label for="unitInStock">Unit In Stock<label><form:errors path="unitInStock" cssStyle="color:#ff0000"/>
                <form:input path="unitInStock" id="unitInStock" class="form-Control"/>

    </div>

    <div class="form-group">

        <label for="manufacturer">Manufacturer<label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>

    </div>
    <div class="form-group">
<label class="control-label" for="productImage">Upload Picture</label>
        <%--<form:input id="productImage" path="productImage" type="file" class="form:input-large"></form:input>--%>
    <form:input path="productImage" id="productImage"  type="file" class="form:input-large"></form:input>


    </div>
<br><br>
    <input type="submit" value="submit" class="btn btn-default">

    <a href="<c:url value="/admin/productInventory"/>" class="btn btn-default">Cancel</a>
</form:form>

    </div>
</div>

            <%@include file="/WEB-INF/views/template/footer.jsp"%>
