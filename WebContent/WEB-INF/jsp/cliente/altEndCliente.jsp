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
		<c:url var="atlEndereco" value="/cliente/atlEndereco" />
		<c:url var="listClientes" value="/cliente/listClientes" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">
				Atualização do Endereço Cliente: <label style="color: red;">${cliente.nome}</label>
			</h1>

			<div class="container-fluid">
				<form:form method="POST" action="${atlEndereco}"
					modelAttribute="end">
					<form:hidden path="id" />
					<div class="form-group">
						<div class="col-sm-9" style="padding-top: 10px; margin-top: 10px;">
							<label>Rua</label>
							<form:input class="form-control" path="rua" autofocus="${focus}"
								required="required" />
						</div>
						<div class="col-sm-3" style="padding-top: 10px; margin-top: 10px;">
							<label>Numero</label>
							<form:input class="form-control" path="numero"
								autofocus="${focus}" required="required" />
						</div>
						<div class="col-sm-4">
							<label>Complemento</label>
							<form:input class="form-control" path="complemento"
								autofocus="${focus}" />
						</div>
						<div class="col-sm-4">
							<label>Bairro</label>
							<form:input class="form-control" path="bairro"
								autofocus="${focus}" required="required" />
						</div>
						<div class="col-sm-4">
							<label>CEP</label>
							<form:input class="form-control" path="cep" autofocus="${focus}"
								id="cep" />
						</div>
						<div class="col-sm-12">
							<div class="col-sm-6" style="margin-left: -17px;">
								<label>Cidade</label>
								<form:input class="form-control" path="cidade"
									required="required" />
							</div>
							<div class="col-sm-3">
								<label>Estado</label>
								<form:input class="form-control" path="estado"
									required="required" />
							</div>
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