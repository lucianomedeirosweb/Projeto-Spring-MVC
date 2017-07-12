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
		var resposta = confirm("Deseja remover esse usuário?");

		if (resposta == true) {
			window.location.href = "<c:url value='/usuarios/" + id + "/remove' />";
		}
	}
</script>
<div class="container-fluid">
	<div class="row">
		<c:import url="../principal/menuv.jsp" />
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header text-center">Lista de Usuários</h1>
          
            <div class="pesquisa">
				<c:url var="filtro" value="/usuarios/filtrar" />
				<c:url var="cadastro" value="/usuarios/formCadastro" />
				<label>Filtro de pesquisa</label>
				<form:form action="${filtro}" method="get" modelAttribute="filtro">
					<form:input class="form-control" placeholder="por login" path="login" />
					<form:input class="form-control" placeholder="por nome" path="nome" />
					<button class="btn btn-sm btn-success" type="submit">Filtrar</button>
				</form:form>
				<a href="${cadastro}" class="botaoNovo btn btn-primary">Novo
					Usuário</a>
			</div>          

          
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
				<tr>
					<th>#</th>
					<th>Matrícula</th>
					<th>Nome</th>
					<th>Login</th>
					<th></th>
				</tr>
			</thead>
              <tbody>
				<c:forEach var="usuario" items="${usuarios}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<td>${usuario.matricula}</td>
						<td>${usuario.nome}</td>
						<td>${usuario.login}</td>
						<td>
							<a class="btn btn-xs btn-warning" href='<c:url value="/usuarios/${usuario.id}/formCadastro" />' role="button">Editar</a>
							<a class="btn-xs btn btn-danger" href=javascript:func()
							onclick="confirmacao('${usuario.id}')">Excluir</a>
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
    <script src="<c:url value="/resources/js/ie10-viewport-bug-workaround.js" />"></script>
  </body>
</html>