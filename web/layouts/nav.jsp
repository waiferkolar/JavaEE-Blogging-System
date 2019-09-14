<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Nav Bar Start -->
<style>
    .navbar-toggler-icon {
        color: white !important;
    }
</style>
<div class="container-fluid bg-dark">
    <nav class="container navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand text-white" href="/">
            <img src="coder.png" alt="" width="30" height="30" class="rounded">
            <span class="text-white ml-3">My Blog</span>
        </a>
        <button class="navbar-toggler text-white bg-white" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link text-white" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href=" #">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-white" href=" #" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Member
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="login.jsp">Login</a>
                        <a class="dropdown-item" href="register.jsp">Register</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="logout.jsp">Logout</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link  text-white" href=" #" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<!-- Nav Bar End -->