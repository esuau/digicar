<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
                                <a class="dropdown-item" href="<c:url value="/car/"/>">Liste véhicule</a>
                                <a class="dropdown-item" href="">Ajouter</a>
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

                    </ul>
                </div>
            </nav>
        </div>

        <div class="container">
            <h5 class="modal-title text-center" id="exampleModalLabel">Ajouter un véhicule</h5>
            <%--@elvariable id="car" type="fr.digicar.model.Car"--%>
            <form:form method="POST" action="${pageContext.request.contextPath}/car/adding" modelAttribute="car">
                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group md-form form-sm form-2 pl-0 input-char-counter">
                            <form:input title="AA-OO1-AA" maxlength="9"
                                        onKeypress="if( (event.keyCode !== 45) && (event.keyCode < 48 || event.keyCode > 57) && (event.keyCode < 65 || event.keyCode > 90) && (event.keyCode < 97 || event.keyCode > 122)) event.returnValue = false;if( (event.which !== 45) && (event.which < 48 || event.which > 57) && (event.which < 65 || event.which > 90) && (event.which < 97 || event.which > 122)) return false;"
                                        cssStyle="text-transform:uppercase" name="registrationNumber" path="registrationNumber"
                                        minlength="" required="required" cssClass="form-control" type="text"/>
                            <form:label path="registrationNumber">Immatriculation</form:label>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input type="text" path="brandName" cssClass="form-control"/>
                            <form:label data-error="Marque invalide" path="brandName">Marque</form:label>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input type="text" path="modelName" cssClass="form-control"/>
                            <form:label data-error="modèle invalide" path="modelName">Nom du modèle</form:label>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <form:label path="transmission">Transmission</form:label>
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:select cssClass="form-control rounded validate mdb-select  my-0 py-1 grey-border"
                                         path="transmission">
                                <form:option value="" disabled="true" selected="true">Choisir un type</form:option>
                                <%--@elvariable id="listOfTransmissionMode" type="java.util.List"--%>
                                <%--@elvariable id="transmissionMode" type="fr.digicar.model.TransmissionMode"--%>
                                <c:forEach items="${listOfTransmissionMode}" var="transmissionMode">
                                    <form:option value="${transmissionMode.id}">${transmissionMode.name}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input min="2" max="5" maxlength="1" type="number" path="seatNumber" cssClass="form-control"/>
                            <form:label data-error="champs invalide" path="seatNumber">Nombre de places</form:label>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input min="3" max="5" maxlength="1" type="number" path="doorNumber" cssClass="form-control"/>
                            <form:label data-error="champs invalide" path="doorNumber">Nombre de portes</form:label>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <div class="col-md-4">
                        <form:label path="type">Type de véhicule</form:label>
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:select cssClass="form-control rounded validate mdb-select  my-0 py-1 grey-border" path="type">
                                <form:option value="" disabled="true" selected="true">Choisir un type</form:option>
                                <%--@elvariable id="listOfCarType" type="java.util.List"--%>
                                <%--@elvariable id="carType" type="fr.digicar.model.CarType"--%>
                                <c:forEach items="${listOfCarType}" var="carType">
                                    <form:option value="${carType.id}">${carType.name}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input min="1" max="6" maxlength="6" type="number" path="kilometers" cssClass="form-control"/>
                            <form:label data-error="champs invalide" path="kilometers">Kilométrage</form:label>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <form:label data-error="champs invalide" path="releaseDate">Date de mise en circulation</form:label>
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input type="date" path="releaseDate" cssClass="form-control"/>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <form:label data-error="champs invalide" path="comfort">Confort</form:label>
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:input type="range" min="1" max="5" path="comfort" Class="range-field"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <form:label path="fuelType">Carburant</form:label>
                        <div class="input-group md-form form-sm form-2 pl-0">
                            <form:select cssClass="form-control rounded validate mdb-select  my-0 py-1 grey-border"
                                         path="fuelType">
                                <form:option value="" disabled="true" selected="true">Choisir un type</form:option>
                                <%--@elvariable id="listOfFuelType" type="java.util.List"--%>
                                <%--@elvariable id="fuelType" type="fr.digicar.model.FuelType--%>
                                <c:forEach items="${listOfFuelType}" var="fuelType">
                                    <form:option value="${fuelType.id}">${fuelType.name}</form:option>
                                </c:forEach>
                            </form:select>
                        </div>
                    </div>
                </div>

                <div class="row" style="border-top: 1px solid #e9ecef;">
                    <div class="col-md-4 text-right">
                        <button type="reset" class="btn btn-secondary" data-dismiss="">Réinitialiser</button>
                    </div>
                    <div class="col-md-4 text-left">
                        <button type="submit" class="btn btn-primary">Ajouter un véhicule</button>
                    </div>
                </div>
            </form:form>
        </div>
        <script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/popper.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/resources/js/mdb.min.js" />"></script>
    </body>
</html>

