<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:import url="../principal/top.jsp" />
<div class="container-fluid">
	<div class="row">
		<c:import url="../principal/menuv.jsp" />
		<c:url var="cadastro" value="/usuarios/cadastrar" />
		<c:url var="listUsuarios" value="/usuarios/listUsuarios" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Cadastro de Usuários</h1>                     

          <div class="container-fluid">
            <form:form method="post" action="${cadastro}" modelAttribute="usuario">
				<form:hidden path="id" />
				
					<div class="col-sm-4">
						<label>Matrícula</label>
						<form:input class="form-control" path="matricula"
							autofocus="${focus}" required="required" />
					</div>

					<div class="col-sm-8">
						<label>Nome</label>
						<form:input class="form-control" path="nome" required="required" />
					</div>

					<div class="col-sm-4">
						<label>Login</label>
						<form:input class="form-control" path="login" required="required" />
					</div>
					
						<div class="col-sm-4 ${tagError}">
							<label>Senha</label>
							<form:input type="password" class="form-control" path="senha"
								required="required" autofocus="${focusError}" />
						</div>
						<div class="col-sm-4 ${tagError}">
							<label>Repita a senha</label>
							<form:input type="password" class="form-control" path="rSenha"
								required="required" />
						</div>
					
										
					<button type="submit" class="btn btn-primary" style="margin-top: 20px; margin-right: 10px;">${botaoNome}</button>
					<a href="${listUsuarios}" class="btn btn-default" style="margin-top: 20px;">Voltar</a>					
				
			</form:form>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->

    <script src="<c:url value="/resources/js/jquery.min.js" />"></script>    
    <script src="<c:url value="/resources/js/bootstrap.js" />"></script>    
    <script src="<c:url value="/resources/js/holder.min.js" />"></script>    
    <script src="<c:url value="/resources/js/ie10-viewport-bug-workaround.js" />"></script>
  </body>
</html>