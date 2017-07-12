<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<c:url value="/resources/img/favicon.ico" />">

    <title>GeEspacos</title>
    
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.css" />">    
    <link href="<c:url value="/resources/css/ie10-viewport-bug-workaround.css" />" rel="stylesheet">    
    <link href="<c:url value="/resources/css/dashboard.css" />" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/leyout.css" />"> 
    <script src="<c:url value="/resources/js/ie-emulation-modes-warning.js" />"></script>
    <script>
		function sair() {
			var resposta = confirm("Deseja sair da aplicação?");
	
			if (resposta == true) {
				window.location.href = "<c:url value='/' />";
			}
		}
	</script>
    
  </head>

  <body>	
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand">Usuário: ${usuarioL.nome}</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">                     
            <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Minha Conta <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Cadastro</a></li>
                    <li><a href="#">Mudar Senha</a></li>                   
                    <li role="separator" class="divider"></li>
                    <li><a href=javascript:func() onclick="sair()">Sair</a></li>                     
                  </ul>
            </li>
            <li><a href="#">Sobre</a></li> 
          </ul>          
        </div>
      </div>
    </nav>