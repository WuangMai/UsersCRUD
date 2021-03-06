<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>
<title>Szczegóły użytkownia</title>
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


    </div>
</div>

<%@ include file="/footer.jsp" %>