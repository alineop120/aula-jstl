<%-- 
    Document   : index
    Created on : 25/03/2025, 14:26:29
    Author     : 364975
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    title>JSP Page</title>
</head>
<body>
    <c:set var="texto" value="Mundo" />
    <c:set var="nome" value="João" />
    <c:set var="idade" value="12" />        
    <h1>Hello, ${texto}! ${nome}</h1>
    <c:if test="${idade >= 18}">
        <p>Maior de idade</p>
    </c:if>
    <c:if test="${idade < 18}">
        <p>Menor de idade</p>
    </c:if>

    <c:set var="mensagem" value="Lista de Compras" />
    <c:set var="compras" value="${['maçã', 'alface', 'leite condensado']}" />
    <%
        java.util.Date dataHoje = new java.util.Date();
        request.setAtribute("dataHoje", dataHoje);
    %>
    <fmt:formatNumber value="1234.56" type="currency" />

    <table>
        <thead>
                <th>${mensagem}</th>
                <td><fmt:formatDate value="${dataHoje}" pattern="dd/MM/yyyy" /></td>
            </thead>
            <tbody>
                <tr>
                <c:forEach var="item" items="${compras}">
                    <tr>
                        <td>
                            <input type="checkbox">
                        </td>
                        <td>
                            <p>${item}</p>
                        </td>
                    </tr>
                </c:forEach>
                </tr>
                <tr>
                    <td>
                        <fmt:formatNumber valie="0.1" type="percent" />
                    </td>
                </tr>
            </tbody>
        </table>
                    
    </body>
</html>
