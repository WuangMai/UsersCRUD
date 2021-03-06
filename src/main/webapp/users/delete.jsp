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
                <button type="submit" name="del" class="btn btn-danger btn-lg btn-block">Usuń użytkownika
                </button>
            </form>
        </div>
    </div>
</div>


<%@ include file="/footer.jsp" %>