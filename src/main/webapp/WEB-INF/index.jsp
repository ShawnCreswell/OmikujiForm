<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<h3 class="text-center">Omikuji Form</h3>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <form action='/login' method='GET'>
                        <div class="mb-3">
                            <label for="number" class="form-label">Pick any number from 5 to 25:</label>
                            <input type="number" min="5" max="25" placeholder="5" name="number" id="number" required>
                        </div>
                        <div class="mb-3">
                            <label for="city" class="form-label">Enter the name of any city:</label>
                            <input type="text" class="form-control" id="city" name="city" aria-describedby="city">
                        </div>
                        <div class="mb-3">
                            <label for="person" class="form-label">Enter the name of any real person:</label>
                            <input type="text" class="form-control" id="person" name="person">
                        </div>
                        <div class="mb-3">
                            <label for="hobby" class="form-label">Enter professional endeavor or hobby:</label>
                            <input type="text" class="form-control" id="hobby" name="hobby">
                        </div>
                        <div class="mb-3">
                            <label for="thing" class="form-label">Enter any type of living thing:</label>
                            <input type="text" class="form-control" id="thing" name="thing">
                        </div>
                        <div class="mb-3">
                            <label for="nice" class="form-label">Say something nice to someone:</label>
                            <textarea class="form-control" id="nice" name="nice" rows="3"></textarea>
                        </div>

                        <p class="">Send and show a friend</p>
                        <button type="submit" class="btn btn-primary">Send</button>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

