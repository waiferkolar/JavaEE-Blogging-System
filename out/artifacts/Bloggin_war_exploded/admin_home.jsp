<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:import url="layouts/header.jsp">
    <c:param name="title" value="Registration Page"/>
</c:import>

<div class="container my-5">
    <c:if test="${!empty(msg)}">
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>${msg}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>
</div>
<%@ include file="layouts/footer.jsp" %>