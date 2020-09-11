<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="pt-br">
<head>
    <meta charset="ISO-8859-1">
    <title>TP3 - JSONPlaceholder - Fotos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <c:import url="/WEB-INF/jsp/header.jsp"/>
        <!-- Título -->
        <div class="pt-5">
            <h4 class="display-4 text-center mt-5 mb-5">JSONPlaceholder - Fotos</h4>
        </div>
        <form action="/fotos/resultado" method="post">
            <div class="input-group mb-5 mx-auto" style="max-width: 20em">
                <span class="input-group-text" id="basic-addon1">Número do álbum:</span>
                <input type="number" class="form-control" id="album" name="album" min="1" max="100">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">OK</button>
            </div>
        </form>
        <c:if test="${not empty fotos}">
            <div class="row row-cols-1 row-cols-md-3 g-4">
            <c:forEach var="f" items="${fotos}">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                                <img class="card-img-top" src="${f.url}" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text">${f.title}</p>
                            </div>
                        </div>
                    </div>
            </c:forEach>
            </div>
        </c:if>
        </div>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>