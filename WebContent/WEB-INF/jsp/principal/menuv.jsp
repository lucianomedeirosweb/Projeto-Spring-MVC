<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:url var="listUsuarios" value="/usuarios/listUsuarios" />
<c:url var="listProdutos" value="/produtos/listProdutos" />
<c:url var="listFornecedores" value="/fornecedor/listFornecedores" />
<c:url var="listCategorias" value="/produtos/formCadastroCat" />
<c:url var="listUnidades" value="/produtos/formCadastroUni" />
<c:url var="home" value="/principal/principal" />
<c:url var="listClientes" value="/cliente/listClientes" />
<c:url var="listCompras" value="/compras/listCompras" />
<c:url var="inicio" value="/sala/inicio" />
<div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li <c:if test="${act == 1}">class="active"</c:if>><a href="${inicio}">Inicio</a></li>
            <li <c:if test="${act == 2}">class="active"</c:if>><a href="${listUsuarios}">Usuários</a></li>
            <li class="dropdown <c:if test="${act == 3}">active</c:if>">
                 
           
          </ul>          
        </div>