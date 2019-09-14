<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:import url="layouts/header.jsp">
    <c:param name="title" value="Registration Page"/>
</c:import>

<div class="container my-5">
    <div class="col-md-6 offset-md-3">
        <c:if test="${!empty(msg)}">
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>${msg}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <h2 class="text-center text-info mb-3">Register To Be A Member</h2>
        <form action="/User" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control rounded-0" id="username" name="username">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control rounded-0" id="email" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control rounded-0" id="password" name="password">
            </div>
            <div class="row justify-content-between no-gutters">
                <a href="login.jsp" class="text-muted">Already register! Please login here!</a>
                <div>
                    <button type="reset" class="btn btn-outline-warning btn-sm mr-1">Cancle</button>
                    <button type="submit" class="btn btn-primary btn-sm">Register</button>
                </div>
            </div>
        </form>
    </div>
</div>

<%@ include file="layouts/footer.jsp" %>