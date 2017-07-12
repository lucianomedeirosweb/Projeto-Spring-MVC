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
		<c:url var="cadastro" value="/cliente/cadastrar" />
		<c:url var="listClientes" value="/cliente/listClientes" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">
				Atualização do Cadastro Cliente: <label style="color: red;">${cliente.nome}</label>
			</h1>

			<div class="container-fluid">
				<form:form method="post" action="${cadastro}"
					modelAttribute="cliente">
					<form:hidden path="id" />
					<form:hidden path="endereco.id" />
					<div class="form-group">
						<div class="col-sm-8">
							<label>Nome</label>
							<form:input class="form-control" path="nome" autofocus="${focus}"
								required="required" />
						</div>

						<div class="col-sm-4">
							<label>CPF</label>
							<form:input class="form-control" path="cpf" required="required"
								id="cpf" />
						</div>

						<div class="col-sm-6">
							<label>Email</label>
							<form:input class="form-control" path="email" required="required" />
						</div>
						<div class="col-sm-3">
							<label>Telefone</label>
							<form:input class="form-control" path="telefone" id="telefone" />
						</div>
						<div class="col-sm-3">
							<label>Celular</label>
							<form:input class="form-control" path="celular" id="celular" />
						</div>

						<button type="submit" class="btn btn-primary"
							style="margin-top: 20px; margin-right: 10px;">${botaoNome}</button>
						<a href="${listClientes}" class="btn btn-default"
							style="margin-top: 20px;">Voltar</a>
					</div>
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
<script
	src="<c:url value="/resources/js/ie10-viewport-bug-workaround.js" />"></script>
</body>
</html>