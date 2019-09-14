<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:import url="layouts/header.jsp">
    <c:param name="title" value="Registration Page"/>
</c:import>

<div class="container my-5">
    <div class="col-md-6 offset-md-3">
        <h2 class="text-center text-info mb-3">Login To Post</h2>
        <form>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control rounded-0" id="email" name="email">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control rounded-0" id="password" name="password">
            </div>
            <div class="row justify-content-between no-gutters">
                <a href="register.jsp" class="text-muted">Not a member yet! Please Register here</a>
                <div>
                    <button type="reset" class="btn btn-outline-warning btn-sm mr-1">Cancle</button>
                    <button type="submit" class="btn btn-primary btn-sm">Login</button>
                </div>
            </div>
        </form>
    </div>
</div>
<%@ include file="layouts/footer.jsp" %>