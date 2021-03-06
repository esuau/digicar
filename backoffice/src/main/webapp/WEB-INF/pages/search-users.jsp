<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Véhicules</a>
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
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="/users"/>">Utilisateurs</a>
            </li>
        </ul>
    </div>
</nav>

<div class="m-3">
    &nbsp;
</div>

<section class="container mt-5">
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-3 sidebar">
                <div class="container">
                    <h5 class="mb-4">
                        <i class="fa fa-search text-muted"></i>
                        &nbsp;
                        Recherche
                    </h5>
                    <%--@elvariable id="searchCriteria" type="fr.digicar.backoffice.utils.SearchCriteria"--%>
                    <form:form method="POST" modelAttribute="searchCriteria"
                               action="${pageContext.request.contextPath}/users">
                        <strong>Nom</strong>
                        <div class="md-form">
                            <form:input class="form-control" placeholder="Ex: Jean Dupont" path="name"/>
                        </div>
                        <strong>Localisation</strong>
                        <div class="form-group mt-2">
                            <form:checkbox id="checkbox1" path="departments" value="75"/>
                            <label for="checkbox1">Paris (75)</label><br/>
                            <form:checkbox id="checkbox2" path="departments" value="92"/>
                            <label for="checkbox2">Hauts-de-Seine (92)</label><br/>
                            <form:checkbox id="checkbox3" path="departments" value="93"/>
                            <label for="checkbox3">Seine-Saint-Denis (93)</label><br/>
                            <form:checkbox id="checkbox4" path="departments" value="94"/>
                            <label for="checkbox4">Val-de-Marne (94)</label><br/>
                            <form:checkbox id="checkbox5" path="departments" value="95"/>
                            <label for="checkbox5">Val-d'Oise (95)</label><br/>
                            <form:checkbox id="checkbox6" path="departments" value="78"/>
                            <label for="checkbox6">Yvelines (78)</label><br/>
                            <form:checkbox id="checkbox7" path="departments" value="91"/>
                            <label for="checkbox7">Essone (91)</label><br/>
                            <form:checkbox id="checkbox8" path="departments" value="77"/>
                            <label for="checkbox8">Seine-et-Marne (77)</label>
                            <br/>
                        </div>
                        <strong>Statuts</strong>
                        <div class="form-group mt-2">
                            <form:checkbox id="active" path="statuses" value="ACTIVE"/>
                            <label for="active">Actif</label><br />
                            <form:checkbox id="inactive" path="statuses" value="INACTIVE"/>
                            <label for="inactive">Inactif</label><br />
                            <form:checkbox id="banned" path="statuses" value="BANNED"/>
                            <label for="banned">Banni</label>
                        </div>
                        <button type="submit" class="btn btn-outline-blue btn-rounded btn-sm">
                            Rechercher
                        </button>
                    </form:form>
                </div>
            </div>
            <div class="col-9 main">
                <h2>Utilisateurs</h2>
                <table class="table table-hover mt-4">
                    <tbody>
                    <%--@elvariable id="users" type="List<fr.digicar.model.User>"--%>
                    <c:if test="${!empty users}">
                        <c:forEach items="${users}" var="user">
                            <tr>
                                <td class="align-middle text-center pr-0">
                                    <c:choose>
                                        <c:when test="${user.gender == 'M.'}">
                                            <img src="<c:url value="/resources/img/profile-male.jpg" />" alt="avatar"
                                                 class="rounded-circle img-responsive" height="60px">
                                        </c:when>
                                        <c:otherwise>
                                            <img src="<c:url value="/resources/img/profile-female.jpg" />" alt="avatar"
                                                 class="rounded-circle img-responsive" height="60px">
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="align-middle">
                                    <strong>${user.firstName} ${user.lastName}</strong>
                                    <br/>
                                    <small class="text-muted">${user.city} (${user.zipCode})</small>
                                </td>
                                <td class="align-middle">
                                    <i class="fa fa-bar-chart text-muted"></i> 0 trajet(s)<br/>
                                    <i class="fa fa-credit-card text-muted"></i> 0.00€ dépensé(s)
                                </td>
                                <td class="align-middle">
                                    <c:choose>
                                        <c:when test="${user.status == 'ACTIVE'}">
                                            <i class="fa fa-circle text-success"></i> Actif
                                        </c:when>
                                        <c:when test="${user.status == 'BANNED'}">
                                            <i class="fa fa-circle text-danger"></i> Banni
                                        </c:when>
                                        <c:otherwise>
                                            <i class="fa fa-circle text-warning"></i> Inactif
                                        </c:otherwise>
                                    </c:choose>
                                    <br/>
                                    <small class="text-muted">
                                            <%--@elvariable id="dateFormat" type="java.text.SimpleDateFormat"--%>
                                        Inscrit(e) le ${dateFormat.format(user.signUpDate)}
                                    </small>
                                </td>
                                <td class="align-middle text-center">
                                    <button class="btn btn-sm btn-primary">
                                        Consulter
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty users}">
                        <tr class="text-center">
                            <td>Aucun utilisateur trouvé</td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript" src="<c:url value="/resources/js/jquery-3.2.1.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/popper.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/mdb.min.js" />"></script>
</body>
</html>
