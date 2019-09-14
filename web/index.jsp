<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:import url="layouts/header.jsp">
    <c:param name="title" value="Home Page "/>
</c:import>

<sql:setDataSource var="ds" dataSource="jdbc/TestDB"/>

<sql:query var="posts" dataSource="${ds}" sql="SELECT * FROM posts"/>

<div class="container my-5">
    <div class="row card-area">
        <c:forEach var="post" items="${posts.rows}">
            <div class="col-md-4 mb-3">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/assets/imgs/${post.image}"
                         class="card-img-top" alt="..." style="min-height:170px;max-height:170px;">
                    <div class="card-body">
                        <h5 class="card-title">${post.title}</h5>
                        <p class="card-text">${fn:substring(post.content,0 ,30 )}</p>
                        <a href="single_post.jsp?id=${post.id}" class="btn btn-primary float-right">Detail... <i
                                class="fa fa-eye"></i></a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<c:import url="layouts/footer.jsp"/>


