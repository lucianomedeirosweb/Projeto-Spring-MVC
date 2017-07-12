<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>GeEspacos</title>


</head>

<br>
	<c:url var="cadastro" value="/sala/formCadastro" />


<body>


	<div id="menu">
		<ul>
			<li><a href="">Home</a></li>
			<li><a href="${cadastro}">Adicionar
					Sala</a></li>
			<li><a href="">Reservar Sala</a></li>
		

		</ul>
	</div>




	<br>
	<br>

	<img src="${pageContext.request.contextPath}/resources/img/unipe.png"
		usemap="#sala" />
	

</body>
</html>