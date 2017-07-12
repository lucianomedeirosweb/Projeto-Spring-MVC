<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:import url="../principal/top.jsp" />
<script>
	function confirmacao(id, descricao) {
		var resposta = confirm("Deseja remover o item " + descricao
				+ " da compra?");

		if (resposta == true) {
			window.location.href = "<c:url value='/compras/" + id + "/removeItem' />";
		}
	}
</script>
<div class="container-fluid">
	<div class="row">
		<c:import url="../principal/menuv.jsp" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Cadastro de Compra</h1>

			<div class="container-fluid">
				<c:url var="addItem" value="/compras/addItem" />
				<c:url var="cadastro" value="/compras/cadastro" />
				<c:url var="listProdutos" value="/produtos/listProdutos" />
				<form:form method="post" action="${addItem}"
					modelAttribute="itemMovimento">						
					<div class="form-group">
						<div class="col-sm-3" style="margin-left: -17px;">
							<label>Produtos</label>
							<form:select path="produto.id" class="form-control">
								<form:option value="" label="-- Produtos --" />
								<form:options items="${selectProdutos}" />
							</form:select>
						</div>
						<div class="col-sm-2">
							<label>Quantidade</label>
							<form:input class="form-control" path="qtde" required="required" />
						</div>
						<div class="col-sm-3">
							<label>Valor Compra</label>
							<form:input class="form-control" path="valor" required="required" />
						</div>
						<button type="submit" class="btn btn-primary"
							style="margin-right: 10px; margin-top: 25px;">Add Item</button>
						<a href="${cadastroU}" class="btn btn-default"
							style="margin-top: 25px;">Cancelar</a>
					</div>
				</form:form>
			</div>

			<div class="container-fluid">
				<form:form method="post" action="${cadastro}"
					modelAttribute="movimento">					
					<div class="form-group">
						<div class="col-sm-3">
							<label>Data da compra</label>
							<form:input class="form-control" path="data" required="required"/>							
						</div>
						<div class="col-sm-3" style="margin-left: -17px;">
							<label>Selecione o Fornecedor</label>
							<form:select path="pessoa.id" class="form-control">
								<form:option value="" label="-- Fornecedores --" />
								<form:options items="${selectFornecedores}" />
							</form:select>
						</div>
						
						<div class="col-sm-3">
							<label>Valor Total da Compra</label>
							<form:input class="form-control" path="totalMovimento" required="required" disabled="true"/>							
						</div>						
						
						<button type="submit" class="btn btn-primary"
							style="margin-right: 10px; margin-top: 25px;">Finalizar Compra</button>						
					</div>
				</form:form>
			</div>

			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Produto</th>
							<th>Qtde</th>
							<th>Valor Compra</th>
							<th>Valor Total</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="itens" items="${itensList}" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${itens.produto.descricao}</td>
								<td>${itens.qtde}</td>
								<td>${itens.valor / itens.qtde}</td>
								<td>${itens.valor}</td>
								<td><a class="btn-xs btn btn-danger" href=javascript:func()
									onclick="confirmacao('${status.count}', '${itens.produto.descricao}')">remover
										item</a></td>
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