<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
        </div>
        <div class="card-body">
            <table class="table">
                <tbody>
                <tr>
                    <th scope="row">Id</th>
                    <td>${user.id}</td>
                </tr>
                <tr>
                    <th scope="row">Nickname</th>
                    <td>${user.userName}</td>
                </tr>
                <tr>
                    <th scope="row">Email</th>
                    <td>${user.email}</td>
                </tr>
                </tbody>
            </table>
            <form action="<c:url value="/userDelete?id=${user.id}"/>" name="deleteButton" method="post">
                <button type="button" name="del" class="btn btn-primary btn-lg btn-block" data-toggle="modal"
                        data-target="#deleteModal">Usuń użytkownika
                </button>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Usuwanie użytkownika</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Tej operacji nie można cofnąć!<br>
                Czy jesteś pewny, że chcesz usunąć?
            </div>
            <div class="modal-footer">
                <form>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Nie, wróć!</button>
                </form>
                <form action="<c:url value="/userDelete?id=${user.id}"/>" name="deleteButton" method="post">
                    <button type="submit" class="btn btn-danger" name="del">Tak, usuń</button>
                </form>
            </div>
        </div>
    </div>
</div>


<%@ include file="/footer.jsp" %>