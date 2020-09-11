<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>TP3 - Consulta de Veículos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    </head>
    <body>
    <div class="container">
        <c:import url="/WEB-INF/jsp/header.jsp"/>
    <!-- Título -->
        <div class="pt-5">
            <h4 class="display-4 text-center mt-5 mb-5">Consulta de Veículos</h4>
            <h6 class="display-6 text-center mt-5 mb-5"><em>Selecione a marca para visualizar os veículos:</em></h6>
            <div class="mx-auto container-fluid d-flex justify-content-center">
                <ul class="list-group list-group-flush mb-5">
                <c:forEach var="m" items="${marcas}">
                    <li class="list-group-item"><a href="/veiculos/${m.id}">${m.name}</a></li>
                </c:forEach>
                </ul>
             </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>