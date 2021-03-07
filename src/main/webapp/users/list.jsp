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

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
        </div>


        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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
                        <c:forEach var="u" items="${userTab}">
                        <th scope="row">${u.id}</th>
                        <td>${u.userName}</td>
                        <td>${u.email}</td>
                        <td><a href="<c:url value="/userShow?id=${u.id}"/>">Pokaż</a> - <a
                                href="<c:url value="/userDelete?id=${u.id}"/>">Usuń</a>
                            - <a href="<c:url value="/userEdit?id=${u.id}"/>">Edytuj</a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<%@ include file="/footer.jsp" %>