<%-- 
    Document   : spostaGiu
    Created on : 13-dic-2016, 9.39.00
    Author     : FSEVERI\pagiaro3283
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="lista" 
             class="com.pagiaro.meneghetti.ListaSpesa"
             scope="session" />
<!DOCTYPE html>
<%
    int prodotto = Integer.parseInt(request.getParameter("prodotto"));
    lista.spostaGiu(prodotto);
    %> <jsp:forward page="index.jsp"/> <%
%>
