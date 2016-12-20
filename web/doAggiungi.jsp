<%-- 
    Document   : doAggiungi
    Created on : 13-dic-2016, 8.38.25
    Author     : FSEVERI\pagiaro3283
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="lista" 
             class="com.pagiaro.meneghetti.ListaSpesa"
             scope="session" />
<!DOCTYPE html>
<%
    String prodotto = request.getParameter("prodotto") ;
    lista.aggiungi(prodotto);
    %> <jsp:forward page="index.jsp"/> <%
%>

