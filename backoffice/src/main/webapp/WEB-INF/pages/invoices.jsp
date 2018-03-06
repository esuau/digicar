<%--
  Created by IntelliJ IDEA.
  User: Jessica
  Date: 08/12/2017
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>CSC Inside</title>

    <link href="<c:url value="/resources/font-awesome/css/font-awesome.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/mdb.min.css" />" rel="stylesheet"/>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet"/>

</head>
<body>
<div class="header">
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
                <%--<li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/car/"/>">Maintain vehicle referential<span class="sr-only">(current)</span></a>
                </li>--%>

                <!-- Dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Véhicules</a>
                    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="<c:url value="/car/"/>">Liste véhicule</a>
                        <a class="dropdown-item" href="<c:url value="/car/add"/>">Ajouter</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/parking"/>">Places de parking</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/pricing"/>">Tarifs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/users"/>">Utilisateurs</a>
                </li>
                    <li class="nav-item">
                    <a class="nav-link" href="<c:url value="/bills"/>">Factures</a>
                </li>
            </ul>
            <%--<form class="form-inline">
                <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
            </form>--%>
        </div>
    </nav>
    <!--/.Navbar-->
</div>
<div class="container">
    <h4><Factures du mois</h4>
    <c:if test="${!empty users}">
    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Rechercher par nom de famille">


            <table class="table" id="myTable">
                <tr class="header">
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>email</th>
                    <th>Numéro de tel</th>
                    <th>Facture</th>
                </tr>
                <c:forEach items="${users}" var="user">

                    <tr>
                        <td>${user.lastName}</td>
                        <td>${user.firstName}</td>
                        <td>${user.email}</td>
                        <td>${user.phoneNumber}</td>
                        <td><i class="fa fa-file fa-2x"></i></td>

                    </tr>
                </c:forEach>
            </table>
        </c:if>
            <script type="text/javascript" src="<c:url value="/resources/js/custom.js" />"></script>








   <!--     <tr class="header">
            <th>Nom</th>
            <th>Prénom</th>
            <th>email</th>
            <th>Numéro de tel</th>
            <th>Facture</th>
        </tr>
        <tr>
            <td>Alfreds Futterkiste</td>
            <td>Germany</td>
            <td>Germany</td>
            <td>Germany</td>
            <td><i class="fa fa-file fa-2x"></i></td>
        </tr>
        <tr>
            <td>Berglunds snabbkop</td>
            <td>Sweden</td>
        </tr>
        <tr>
            <td>Island Trading</td>
            <td>UK</td>
        </tr>
        <tr>
            <td>Koniglich Essen</td>
            <td>Germany</td>
        </tr>
    </table> -->
</div>


<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/popper.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/mdb.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/custom.js" />"></script>
</body>
</html>