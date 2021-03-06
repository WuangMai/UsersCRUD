<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ include file="/header.jsp" %>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
        <a href="<c:url value="/userAdd"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
</div>

<!-- Content Row -->

<div class="row">
</div>

<div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">id</th>
            <th scope="col">Nickname</th>
            <th scope="col">Email</th>
            <th scope="col">Akcja</th>
        </tr>
        </thead>

        <tbody>
        <tr>
            <c:forEach var="u" begin="330" items="${userTab}">
            <th scope="row">${u.id}</th>
            <td>${u.userName}</td>
            <td>${u.email}</td>
            <td><a href="<c:url value="/userShow?id=${u.id}"/>">Pokaż</a> - <a href="<c:url value="/userDelete?id=${u.id}"/>">Usuń</a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Content Row -->
<div class="row">
    <!-- Content Column -->
    <div class="col-lg-6 mb-4">
    </div>

    <div class="col-lg-6 mb-4">

    </div>
</div>

<%@ include file="/footer.jsp" %>