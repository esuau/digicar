<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>CarSharingClub - BackOffice</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/mdb.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"/>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark indigo">
    <a class="navbar-brand" href="#">CSC Inside</a>
    <button class="navbar-toggler" type="button"
            data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>

        </ul>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        </form>
    </div>
</nav>
<!--/.Navbar-->

<div class="container">
    <div class="row mt-5">
        <div class="col-6 p-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Maintain vehicle referential</h4>
                    <p class="card-text">Alpha Barry &amp; Thierno Diallo</p>
                    <a href="#" class="btn btn-primary">ACCESS</a>
                </div>
            </div>
        </div>
        <div class="col-6 p-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Maintain parking spot referential</h4>
                    <p class="card-text">Christophe Gougam &amp; Djouher Kahel</p>
                    <a href="<c:url value="/parking/add"/>" class="btn btn-primary">ACCESS</a>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6 p-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Maintain pricing referential</h4>
                    <p class="card-text">Jessica Ramanantsoa &amp; Philippine Venries</p>
                    <a href="#" class="btn btn-primary">ACCESS</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/popper.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/mdb.min.js" />"></script>
</body>
</html>