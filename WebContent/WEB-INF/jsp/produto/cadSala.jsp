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
		<c:url var="cadastro" value="/sala/cadastrar" />
		<c:url var="inicios" value="/sala/inicio" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Cadastrar a sua sala</h1>

			<div class="container-fluid">
				<form:form method="post" action="${cadastro}" modelAttribute="sala">
					<form:hidden path="id" />

					<div class="col-sm-4">
						<label>Dispnivel</label>
						<form:input class="form-control" path="disponivel"
							autofocus="${focus}" required="required" />
					</div>

					<div class="col-sm-4">
						<label>Tipo</label>
						<form:input class="form-control" path="tipo" autofocus="${focus}"
							required="required" />
					</div>

					<div class="col-sm-4">
						<label>Numero</label>
						<form:input class="form-control" path="numero"
							autofocus="${focus}" required="required" />
					</div>

					<div class="col-sm-4">
						<label>Projetor</label>
						<form:input class="form-control" path="projetor"
							autofocus="${focus}" required="required" />
					</div>

					<div class="col-sm-4">
						<label>Climatizada</label>
						<form:input class="form-control" path="climatizada"
							autofocus="${focus}" required="required" />
					</div>

					<button type="submit" class="btn btn-primary"
						style="margin-top: 20px; margin-right: 10px;">${botaoNome}</button>
					<a href="${inicios}" class="btn btn-default"
						style="margin-top: 20px;">Voltar</a>
				</form:form>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap core JavaScript
    ================================================== -->


/body>
</html>