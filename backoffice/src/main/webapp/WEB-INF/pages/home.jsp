<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html class="full-height">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>CSC Inside</title>
    <link href="<c:url value="/resources/font-awesome/css/font-awesome.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/mdb.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"/>
    <style>
        .intro-1 {
            background: url(<c:url value="/resources/img/carsharingclub.jpg"/>) no-repeat center center;
            background-size: cover;
        }
    </style>
</head>

<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark indigo">
        <a class="navbar-brand" href="<c:url value="/"/>">CSC Inside</a>
        <button class="navbar-toggler" type="button"
                data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">Véhicules</a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="<c:url value="/car/"/>">Liste des véhicules</a>
                        <a class="dropdown-item" href="<c:url value="/car/add"/>">Ajouter</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/parking"/>">Places de parking</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/pricing"/>">Tarifs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/users"/>">Utilisateurs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/invoices"/>">Facture</a>
                </li>
            </ul>
        </div>
    </nav>
    <section class="view intro-1 hm-black-strong">
        <div class="full-bg-img flex-center">
            <div class="container">
                <div class="row">
                    <div class="col-3">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title">Véhicules</h3>
                                <p class="card-text">Alpha &amp; Thierno</p>
                                <a href="<c:url value="/car/add"/>" class="btn btn-primary w-100">Ajouter</a>
                                <a href="<c:url value="/car/"/>" class="btn btn-primary w-100">Rechercher</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card h-100">
                            <div class="card-body">
                                <h3 class="card-title">Parkings</h3>
                                <p class="card-text mb-5">Christophe &amp; Djouher</p>
                                <a href="<c:url value="/parking"/>" class="btn btn-primary w-100">Accéder</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card h-100">
                            <div class="card-body">
                                <h3 class="card-title">Tarifs</h3>
                                <p class="card-text mb-5">Jessica &amp; Philippine</p>
                                <a href="<c:url value="/pricing"/>" class="btn btn-primary w-100">Accéder</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="card h-100">
                            <div class="card-body">
                                <h3 class="card-title">Utilisateurs</h3>
                                <p class="card-text mb-5">Evan</p>
                                <a href="<c:url value="/users"/>" class="btn btn-primary w-100">Accéder</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</header>

<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/popper.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/mdb.min.js" />"></script>
</body>
</html>
