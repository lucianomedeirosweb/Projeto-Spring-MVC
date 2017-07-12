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
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h2 class="page-header text-center">Compras Cliente: ${findMov.pessoa.nome}</h2>
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Descrição</th>
							<th>Quantidade</th>
							<th>Valor Unitário</th>
							<th>Valor Total</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="items" items="${listMov}" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${items.produto.descricao}</td>
								<td>${items.qtde}</td>
								<td>${items.valor / items.qtde}</td>
								<td>${items.valor}</td>
							</tr>
						</c:forEach>
				</table>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap core JavaScript
    ================================================== -->

<script src='<c:url value="/resources/js/jquery.min.js" />'></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/js/holder.min.js" />"></script>
<script
	src="<c:url value="/resources/js/ie10-viewport-bug-workaround.js" />"></script>
</body>
</html>