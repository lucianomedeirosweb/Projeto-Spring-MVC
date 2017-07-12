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
		var resposta = confirm("Deseja remover esse produto?");

		if (resposta == true) {
			window.location.href = "<c:url value='/sala/" + id + "/remove' />";
		}
	}
</script>
<div class="container-fluid">
	<div class="row">
		<c:import url="../principal/menuv.jsp" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Lista de Produtos</h1>

			<div class="pesquisa">
				
				<c:url var="cadastro" value="/sala/formCadastro" />
				
		
				
					</a> <a href="${cadastro}" class="botaoNovo btn btn-primary">Nova
					sala</a>
			</div>


			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>disponivel</th>
							<th>tipo</th>
							<th>numero</th>
							<th>projetor Estoque</th>
							<th>climatizada</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="sala" items="${salas}" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${sala.disponivel}</td>
								<td>${sala.tipo}</td>
								<td> ${sala.numero}</td>
								<td>${sala.projetor}</td>
								<td>${sala.climatizada}</td>
								<td><a class="btn btn-xs btn-warning"
									href='<c:url value="/sala/${sala.id}/formCadastro" />'
									role="button">Editar</a> <a class="btn-xs btn btn-danger"
									href=javascript:func() onclick="confirmacao('${sala.id}')">Excluir</a>
								</td>
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