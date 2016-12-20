<%-- 
    Document   : spostaSu
    Created on : 13-dic-2016, 9.38.20
    Author     : FSEVERI\pagiaro3283
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="lista" 
             class="com.pagiaro.meneghetti.ListaSpesa"
             scope="session" />
<!DOCTYPE html>
<%
    int prodotto = Integer.parseInt(request.getParameter("prodotto"));
    lista.spostaSu(prodotto);
    %> <jsp:forward page="index.jsp"/> <%
%>
