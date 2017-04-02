<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>


            <p class="lead">Please Update the product Information Here </p>

        </div>
        <form:form action="${pageContext.request.contextPath}/admin/productInventory/editProduct/" method="post" commandName="product" enctype="multipart/form-data">

            <form:hidden path="productId" value="${product.productId}" />
            <div class="form-group">

                <label for="name">Name</label>
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>

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
                <form:textarea path="productDesription" id="description" class="form-Control" value="${product.productDesription}"/>

            </div>
            <div class="form-group">

                <label for="price">Price</label>
                <form:input path="productPrice" id="price" class="form-Control"  value="${product.productPrice}"/>

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

                <label for="unitInStock">Unit In Stock<label>
                        <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>

            </div>

            <div class="form-group">

                <label for="manufacturer">Manufacturer<label>
                        <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>

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
