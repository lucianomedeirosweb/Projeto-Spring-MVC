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
		<c:url var="cadastro" value="/produtos/cadastrar" />
		<c:url var="listProdutos" value="/produtos/listProdutos" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Cadastro de Produtos</h1>

			<div class="container-fluid">
				<form:form method="post" action="${cadastro}"
					modelAttribute="produto">
					<form:hidden path="id" />

					<div class="col-sm-4">
						<label>Descrição</label>
						<form:input class="form-control" path="descricao"
							autofocus="${focus}" required="required" />
					</div>

					<div class="col-sm-4">
						<label>Valor</label>
						<form:input class="form-control" path="preco" required="required"
							onfocus="this.value='';" />
					</div>

					<div class="col-sm-4">
						<label>Qtde Estoque</label>
						<form:input class="form-control" path="qtdeEstoque"
							required="required" onfocus="this.value='';" />
					</div>

					<div class="col-sm-12" style="margin-top: 10px;">
						<div class="col-sm-3" style="margin-left: -17px;">
							<label>Categoria</label>
							<form:select path="categoria.id" class="form-control">
								<form:option value="" label="-- Categoria --" />
								<form:options items="${selectCategoria}" />
							</form:select>
						</div>
						<div class="col-sm-3">
							<label>Unidade</label>
							<form:select path="unidade.id" class="form-control">
								<form:option value="" label="-- Unidade --" />
								<form:options items="${selectUnidade}" />
							</form:select>
						</div>
					</div>

					<button type="submit" class="btn btn-primary" style="margin-top: 20px; margin-right: 10px;">${botaoNome}</button>
					<a href="${listProdutos}" class="btn btn-default" style="margin-top: 20px;">Voltar</a>
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