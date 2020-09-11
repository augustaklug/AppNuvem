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
    <h4 class="display-4 text-center mt-5 mb-5">Consulta de CEP</h4>
    <form action="/cep/resultado" method="post" style="max-width: 20em" class="mx-auto">
        <div class="input-group mb-3">
            <span class="input-group-text">Estado:</span>
            <select class="form-select" id="uf" name="uf" style="max-width: 5em">
                <option value="AC">AC</option>
                <option value="AL">AL</option>
                <option value="AP">AP</option>
                <option value="AM">AM</option>
                <option value="BA">BA</option>
                <option value="CE">CE</option>
                <option value="DF">DF</option>
                <option value="ES">ES</option>
                <option value="GO">GO</option>
                <option value="MA">MA</option>
                <option value="MS">MS</option>
                <option value="MT">MT</option>
                <option value="MG">MG</option>
                <option value="PA">PA</option>
                <option value="PB">PB</option>
                <option value="PR">PR</option>
                <option value="PE">PE</option>
                <option value="PI">PI</option>
                <option value="RJ">RJ</option>
                <option value="RN">RN</option>
                <option value="RS">RS</option>
                <option value="RO">RO</option>
                <option value="RR">RR</option>
                <option selected value="SC">SC</option>
                <option value="SP">SP</option>
                <option value="SE">SE</option>
                <option value="TO">TO</option>
        </select>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Cidade:</span>
            <input type="text" class="form-control" id="municipio" name="municipio">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Rua:</span>
            <input type="text" class="form-control" id="logradouro" name="logradouro">
            <button class="btn btn-outline-secondary" type="submit" id="button-addon1">OK</button>
        </div>
    </form>
    <c:if test="${not empty enderecos}">
        <div style="max-width: 20em" class="mx-auto my-3">
            <h5>Resultados: </h5>
            <ul class="list-group list-group-flush mb-5">
                <c:forEach var="e" items="${enderecos}">
                    <li class="list-group-item">${e} - CEP: <strong>${e.cep}</strong></li>
                </c:forEach>
            </ul>
        </div>
    </c:if>
    </div>
</div>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>

</body>
</html>