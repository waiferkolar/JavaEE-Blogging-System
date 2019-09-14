<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<c:import url="layouts/header.jsp">
    <c:param name="title" value="Single Poage Page"/>
</c:import>

<sql:setDataSource var="ds" dataSource="jdbc/TestDB"/>

<sql:query var="posty" dataSource="${ds}" sql="SELECT * FROM posts WHERE id=?">
    <sql:param>${param.id}</sql:param>
</sql:query>

<c:set var="post" value="${posty.rows[0]}"/>

<!-- Card Content Start -->
<style>
    h5 {
        color: #444;
    }

    p {
        text-indent: 45px;
        color: #777;
        text-align: justify;
    }
</style>
<div class="container my-5">
    <h1 class="text-center text-info my-5">${post.title}</h1>
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <img src="${pageContext.request.contextPath}/assets/imgs/${post.image}" alt="" class="img-fluid">
        </div>
    </div>
    <div class="row justify-content-between no-gutters">
        <spam class="text-muted">
            <i>Writer </i>
            <span class="text-info">
                <i class="fa fa-user"></i>
                ${post.author}
            </span>
        </spam>
        <spam class="text-muted">
            <i class="fa fa-user"></i>
            <span class="text-info">${post.created_at}
            </span>
        </spam>
    </div>
    <p class="mt-3 text-justify" style="text-indent:45px;">
        ${post.content}
    </p>
    <div class="row justify-content-center">
        <a href="/">
            <i class="fa fa-arrow-left"></i>
            Go Back</a>
    </div>
</div>
<!-- Card Content End -->


<jsp:include page="layouts/footer.jsp"/>