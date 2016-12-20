<%-- 
    Document   : index
    Created on : 6-dic-2016, 9.35.43
    Author     : FSEVERI\pagiaro3283
--%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="lista" 
             class="com.pagiaro.meneghetti.ListaSpesa"
             scope="session" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista della spesa</h1>
        <%
            if(lista.getLista().size() == 0) {
                %>
                    <h4>Lista vuota</h4>
                <%
            }
            else {
                 %>
                 <ol type="I">
                    <%
                        ArrayList<String> s = lista.getLista();
                        for(int i=0; i< s.size(); i++) {
                            out.println("<li>"+s.get(i)+"   <a href=\"doRimuovi.jsp?prodotto="+ i +"\">Rimuovi</a>"
                                    + (i!=0 ? "    <a href=\"spostaSu.jsp?prodotto="+ i +"\">Sposta su</a>" : "") +
                                    (i!=s.size()-1 ? "   <a href=\"spostaGiu.jsp?prodotto="+ i +"\">Sposta gi&ugrave;</a>" : "") + "</li>") ;
                        }
                    %>
                 </ol>
                <%
            }
        %>
        <form action="doAggiungi.jsp" method="get">
            <p><label>Prodotto: <input type="text" name="prodotto"/></label>
            <button type="submit">Aggiungi</button></p>
                <%
                    if(!lista.isValid()) {
                %>
                    <h3 class="errors">Impossibile aggiungere il prodotto</h3>
                <%
                    }
                %>
        </form>
    </body>
</html>
