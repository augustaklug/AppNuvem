<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>TP3 - Consulta de CEP</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <c:import url="/WEB-INF/jsp/header.jsp"/>
    <!-- Título -->
    <div class="pt-5">
    <h4 class="display-4 text-center mt-5 mb-5">TP3 - Consulta CEP</h4>
    <form action="/endereco/resultado" method="get">
        <div style="max-width: 20em" class="mx-auto input-group mb-3">
            <span class="input-group-text">Informe o CEP: </span>
            <input type="text" class="form-control" id="cep" name="cep">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon2">OK</button>
        </div>
    </form>
    <c:if test="${not empty endereco}">
        <div style="max-width: 20em" class="mx-auto my-3">
            <h5>Endereço: </h5>
            <p>${endereco}</p>
        </div>
    </c:if>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>




</body>
</html>