<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:import url="../principal/top.jsp" />
<script>
	function confirmacao(id) {
		var resposta = confirm("Deseja remover esse cliente?");

		if (resposta == true) {
			window.location.href = "<c:url value='/cliente/" + id + "/remove' />";
		}
	}
</script>
<div class="container-fluid">
	<div class="row">
		<c:import url="../principal/menuv.jsp" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Lista de Clientes</h1>

			<div class="pesquisa">
				<c:url var="filtro" value="/cliente/filtrar" />
				<c:url var="cadastro" value="/cliente/formCadastro" />
				<label>Filtro de pesquisa</label>
				<form:form action="${filtro}" method="get" modelAttribute="filtro">
					<form:input class="form-control" placeholder="por nome" path="nome" />
					<form:input class="form-control " placeholder="por CPF" path="cpf" />
					<button class="btn btn-sm btn-success" type="submit">Filtrar</button>
				</form:form>
				<a href="${cadastro}" class="botaoNovo btn btn-primary">Novo
					Cliente</a>
			</div>


			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Nome</th>
							<th>CPF</th>
							<th>Email</th>
							<th>Telefone</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="cliente" items="${clientes}" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${cliente.nome}</td>
								<td>${cliente.cpf}</td>
								<td>${cliente.email}</td>
								<td>${cliente.telefone}</td>
								<td><a class="btn btn-xs btn-success"
									href='<c:url value="/cliente/${cliente.id}/findCadastro" />'
									role="button">Visualizar</a> <a class="btn btn-xs btn-warning"
									href='<c:url value="/cliente/${cliente.id}/altFormCadastro" />'
									role="button">Edit Cadastro</a> <a
									class="btn btn-xs btn-warning"
									href='<c:url value="/cliente/${cliente.id}/${cliente.endereco.id}/formEndereco" />'
									role="button">Edit Endereço</a> <a
									class="btn-xs btn btn-danger" href=javascript:func()
									onclick="confirmacao('${cliente.id}')">Excluir</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
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