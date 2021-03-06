<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>CSC Inside</title>
</head>
<body>
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
            </li><li class="nav-item">
                <a class="nav-link" href="<c:url value="/invoices"/>">Factures</a>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>