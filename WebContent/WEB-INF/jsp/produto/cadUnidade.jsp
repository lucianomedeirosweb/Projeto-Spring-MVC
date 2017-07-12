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
		var resposta = confirm("Deseja remover essa unidade?");

		if (resposta == true) {
			window.location.href = "<c:url value='/produtos/" + id + "/removeUni' />";
		}
	}
</script>
<div class="container-fluid">
	<div class="row">
		<c:import url="../principal/menuv.jsp" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Cadastro de Unidades</h1>

			<div class="pesquisa">
				<c:url var="cadastroUni" value="/produtos/cadastrarUni" />
				<c:url var="cadastroU" value="/produtos/formCadastroUni" />
				<c:url var="listProdutos" value="/produtos/listProdutos" />
				<form:form method="post" action="${cadastroUni}"
					modelAttribute="unidade">
					<form:hidden path="id" />
					<div class="form-group">
						<div class="col-sm-4">
							<label style="font-size: 14px; margin-right: 5px;">Descrição:
							</label>
							<form:input class="form-control" path="descricao"
								autofocus="${focus}" required="required" />
						</div>
						<button type="submit" class="btn btn-primary"
							style="margin-right: 10px;">${botaoNome}</button>
						<a href="${cadastroU}" class="btn btn-default">Cancelar</a> <a
							href="${listProdutos}" class="btn btn-default"
							style="margin-left: 350px;">Voltar Produtos</a>
					</div>
				</form:form>
			</div>


			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Descrição</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="unidade" items="${unidades}" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${unidade.descricao}</td>
								<td><a class="btn btn-xs btn-warning"
									href='<c:url value="/produtos/${unidade.id}/formCadastroUni" />'
									role="button">Editar</a> <a class="btn-xs btn btn-danger"
									href=javascript:func() onclick="confirmacao('${unidade.id}')">Excluir</a>
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