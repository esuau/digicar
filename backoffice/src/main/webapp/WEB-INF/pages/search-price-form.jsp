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
                        <li class="nav-item active">
                            <a class="nav-link" href="<c:url value="/pricing"/>">Tarifs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<c:url value="/users"/>">Utilisateurs</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!--/.Navbar-->

        </div>
        <br/>
        <div class="container">
            <a href="<c:url value="/pricing"/>">
                <button type="button" class="btn btn-primary mt-2">
                    <i class="fa fa-arrow-circle-left mr-1"></i>
                    Ajout/Liste des pricings
                </button>
            </a>
            <br/>
            <br/>
            <form:form class="form-inline" action="/pricing/searchs" method="POST">

                <div class="md-form form-group">
                    <i class="fa fa-tag prefix grey-text"></i>
                    <input id="label" type="text" name="label" class="form-control"/>
                    <label for="label">Libellé</label>
                </div>

                <div class="md-form form-group">
                    <i class="fa fa-eur prefix grey-text"></i>
                    <input id="minMonthlyFees" type="number" step="1" name="minMonthlyFees" class="form-control"/>
                    <label for="minMonthlyFees" data-error="Montant invalide">Frais mensuels min</label>
                </div>

                <div class="md-form form-group">
                    <i class="fa fa-eur prefix grey-text"></i>
                    <input id="maxMonthlyFees" type="number" step="1" name="maxMonthlyFees" class="form-control"/>
                    <label for="maxMonthlyFees" data-error="Montant invalide">Frais mensuels max</label>
                </div>
                <div class="md-form form-group">
                    <i class="fa fa-eur prefix grey-text"></i>
                    <input id="minHourlyPrice" name="minHourlyPrice" type="number" step="0.01" class="form-control"/>
                    <label for="minHourlyPrice" data-error="Montant invalide">Prix par heure minimal</label>
                </div>

                <div class="md-form form-group">
                    <i class="fa fa-eur prefix grey-text"></i>
                    <input id="maxHourlyPrice" name="maxHourlyPrice" type="number" step="0.01" class="form-control"/>
                    <label for="maxHourlyPrice" data-error="Montant invalide">Prix par heure maximal</label>
                </div>

                <div class="md-form form_group">
                    <i class="fa fa-eur prefix grey-text"></i>
                    <input id="minKmPrice" name="minKmPrice" type="number" step="0.01" class="form-control"/>
                    <label for="minKmPrice" data-error="Montant invalide">Prix par km min</label>
                </div>

                <div class="md-form form_group">
                    <i class="fa fa-eur prefix grey-text"></i>
                    <input id="maxKmPrice" name="maxKmPrice" type="number" step="0.01" class="form-control"/>
                    <label for="maxKmPrice" data-error="Montant invalide">Prix par km max</label>
                </div>

                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-search mr-1"></i>
                    Rechercher pricing
                </button>
                <br/>
                <table class="table table-hover">
                    <tr>
                        <th width="30">Id</th>
                        <th width="120">Libelle</th>
                        <th width="60">Prix par heure(€)</th>
                        <th width="60">Prix par km(€)</th>
                        <th width="60">Frais mensuels(€)</th>
                    </tr>
                    <c:choose>
                        <%--@elvariable id="foundPrices" type="java.util.List"--%>
                        <c:when test="${!empty foundPrices}">
                            <c:forEach items="${foundPrices}" var="pricing">
                                <%--@elvariable id="pricing" type="fr.digicar.model.Pricing"--%>
                                <tr>
                                    <td>${pricing.id}</td>
                                    <td>${pricing.label}</td>
                                    <td>${pricing.hourlyPrice}</td>
                                    <td>${pricing.kmPrice}</td>
                                    <td>${pricing.monthlyFees}</td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>Aucun résultat pour l'instant ...</tr>
                        </c:otherwise>
                    </c:choose>
                </table>

            </form:form>
        </div>

        <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/popper.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/mdb.min.js" />"></script>
    </body>
</html>
