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
<h3 class="text-center mt-4">Here's Your Omikuji</h3>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    In
                    <c:out value="${number}"></c:out>
                    years, you will live in 
                    <c:out value="${city}"></c:out>
                    with 
                    <c:out value="${person}"></c:out>
                    as your roomate, selling
                    <c:out value="${hobby}"></c:out>
                    for a living. The next time you see a
                    <c:out value="${thing}"></c:out>
                    , you will have good luck. Also,
                    <c:out value="${nice}"></c:out>!
                </div>

            </div>
            <div class="text-center mt-3">
                <a href="/">Go back</a>
            </div>


        </div>

    </div>
</div>

</body>
</html>

