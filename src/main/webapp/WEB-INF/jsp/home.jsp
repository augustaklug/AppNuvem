<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>TP3 - Consumo de APIs com Spring Cloud</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <c:import url="/WEB-INF/jsp/header.jsp"/>
    <!-- Título -->
    <div class="pt-5">
    <h3 class="display-3 text-center mt-5 mb-5">TP3 - Consumo de APIs com Spring Cloud</h3>
    </div>
    <!-- NavBar -->
    <div class="mt-5 mx-auto mb-5 text-center" style="max-width: 75%">
        <a class="nav-link " href="/endereco"><button type="button" class="btn btn-primary btn-lg">Viacep - Consulta CEP</button></a>
        <a class="nav-link " href="/veiculos"><button type="button" class="btn btn-success btn-lg">FIPE - Veículos por marca</button></a>
        <a class="nav-link " href="/fotos"><button type="button" class="btn btn-danger btn-lg">JSONPlaceholder - Fotos</button></a>

    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>