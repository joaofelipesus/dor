<%-- 
    Document   : remover_empresa
    Created on : 28/04/2016, 10:57:41
    Author     : joaolopes
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="../template.jsp"/>
        <div class="row">
            <div class="container container-fluid">
                <div class="panel panel-primary  margem_form col-md-offset-2">
                    <div class="panel-heading">
                        <label>Remover de empresa</label>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="<c:url value="/controller?tarefa=RemoverEmpresa" context="/DOR"/>">
                            <div class ="form-group">
                                <input name="razao_social" class="form-control" required="true" placeholder ="Razão social" value="${empresaSelecionada.razaoSocial}" readonly="true"/>
                            </div>
                            <div class ="form-group margem_input">        
                                <input name="cnpj" id="cnpj" class="form-control" required="true" placeholder ="cnpj" pattern="[0-9*./-]*" maxlength="18" minlength="18" value="${empresaSelecionada.cnpj}" readonly="true"/>
                            </div>
                            <div class ="form-group margem_input">        
                                <input name="cnpj_repetido" id="cnpj_repetido" class="form-control" required="true" placeholder ="Repita o cnpj" pattern="[0-9*./-]*" maxlength="18" minlength="18"/>
                            </div>
                            <button id="botao" class="btn btn-danger" disabled="true">Remover</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="<c:url value="/js/funcoes_empresa.js" context="/DOR"/>"></script>
    </body>
</html>
