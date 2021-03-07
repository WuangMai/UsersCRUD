<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<%@ include file="/header.jsp" %>

<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Edycja użytkownika</h6>
        </div>

        <div class="mx-5" style="width: auto">
            <form method="post" action="<c:url value="/userEdit"/> ">
                <div class="form-group">
                    <label for="id">Id</label>
                    <input type="text" name="id" class="form-control" id="id" readonly value="${user.id}">
                </div>
                <div class="form-group">
                    <label for="email">Adres email</label>
                    <input type="email" name="email" class="form-control" id="email" value="${user.email}">
                </div>
                <div class="form-group">
                    <label for="username"> Nickname</label>
                    <input type="text" name="username" class="form-control" id="username" value="${user.userName}">
                </div>
                <div class="form-group">
                    <label for="pass"> Hasło</label>
                    <input type="password" name="password" class="form-control" id="pass" value="${user.userName}">
                </div>

                <button type="submit" class="btn btn-primary">Zatwierdź</button>
            </form>
        </div>


    </div>
</div>