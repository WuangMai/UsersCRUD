<%--
  Created by IntelliJ IDEA.
  User: wuang
  Date: 06.03.2021
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>

<div class="mx-5" style="width: 10px;">
    <h1 class="h3 mb-0 text-gray-800">Dodaj użytkownika</h1>
</div>
<br>

<div class="mx-5" style="width: auto">
    <form method="post" action="<c:url value="/userAdd"/> ">
        <div class="form-group">
            <label for="email">Adres email</label>
            <input type="email" name="email" class="form-control" id="email">
        </div>
        <div class="form-group">
            <label for="username"> Nickname</label>
            <input type="text" name="username" class="form-control" id="username">
        </div>
        <div class="form-group">
            <label for="pass"> Hasło</label>
            <input type="password" name="password" class="form-control" id="pass">
        </div>

        <button type="submit" class="btn btn-primary">Dodaj</button>
    </form>
</div>

<%@ include file="/footer.jsp" %>
