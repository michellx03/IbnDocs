<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="javax.persistence.Query"%>
<%@page import="javax.persistence.EntityManager"%>

<%@page import="br.com.ibndocs.uteis.ConexaoEntityFactory"%>
<%@page import="java.util.List"%>

<c:set var="bodyContent">

	<div class="page-bar">
		<ul class="page-breadcrumb">
			<li><a href="/IbnDocs/dashboard/index">Dashboard</a>
				<i class="fa fa-circle"></i></li>
			<li><span>Setor</span><i class="fa fa-circle"></i></li>
			<li><span>Consulta</span></li>

		</ul>
		<div class="page-toolbar">
			<div class="btn-group pull-right"></div>
		</div>
	</div>
	<!-- END PAGE BAR -->
	<!-- BEGIN PAGE TITLE-->
	<h1 class="page-title">
		Setores <small></small>
	</h1>
	<!-- END PAGE TITLE-->
	<!-- END PAGE HEADER-->
	<div class="row">
		<div class="col-md-12">
			<!-- BEGIN EXAMPLE TABLE PORTLET-->
			<div class="portlet light bordered">
				<div class="portlet-title">
					<%
						try {
					%>
					<%
						if (request.getParameter("mensagem").equals("falha")) {
					%>
					<div style="width: 100%" class="alert alert-danger ">
						<button class="close" data-close="alert"></button>
						Erro ao efetuar operação!
					</div>
					<%
						}
								if (request.getParameter("mensagem").equals("sucesso")) {
					%>
					<div style="width: 100%" class="alert alert-success ">
						<button class="close" data-close="alert"></button>
						Sucesso ao efetuar operação!
					</div>
					<%
						}
					%>
					<%
						} catch (NullPointerException ex) {
							}
					%>
					
<div class="btn-group">
						<a href="/IbnDocs/Setor/Cadastro"
							id="sample_editable_1_new" class="btn sbold green"> Cadastrar
							<i class="fa fa-plus"></i>
						</a>
					</div>
				</div>
				
				<div class="portlet-title">
					<div class="caption font-dark">
						<i class="icon-settings font-dark"></i> <span
							class="caption-subject bold uppercase">Opções</span>
					</div>
					<div class="tools"></div>
				</div>
				<div class="portlet-body">
					<table class="table table-striped table-bordered table-hover"
						id="sample_1">
						<thead>
							<tr>
								<th>Id</th>
								<th>Setor</th>
								<th style="width: 87px;" class="hidden-xs">Ações</th>
							</tr>
						</thead>


						<tbody>

							<%
								EntityManager em = new ConexaoEntityFactory().getEntityManager();
									Query query = (Query) em.createNativeQuery("SELECT set_id, set_setor FROM sistema.setor");
									List<Object[]> list = query.getResultList();
									for (Object[] obj : list) {
							%>

							<tr>
								<td>
									<%
										out.print(obj[0]);
									%>
								</td>
								<td>
									<%
										out.print(obj[1]);
									%>
								</td>
								<td class="hidden-xs">
									<div class="btn-group pull-right">
										<button class="btn green btn-xs btn-outline dropdown-toggle"
											data-toggle="dropdown">
											Ações <i class="fa fa-angle-down"></i>
										</button>
										<ul class="dropdown-menu pull-right">
											<li><a
												href="/IbnDocs/Setor/Editar?id=<%out.print(obj[0]);%>">
													<i class="fa fa-edit"></i> Alterar
											</a></li>
											<li><a
												href="/IbnDocs/Setor/Excluir?id=<%out.print(obj[0]);%>">
													<i class="fa fa-remove"></i> Excluir
											</a></li>
										</ul>
									</div>
								</td>

							</tr>
							<%
								}
							%>

						</tbody>
					</table>
				</div>
			</div>
			<!-- END EXAMPLE TABLE PORTLET-->
			<!-- BEGIN EXAMPLE TABLE PORTLET-->
			<!-- END EXAMPLE TABLE PORTLET-->
		</div>
	</div>


</c:set>
<t:master>

	<jsp:attribute name="scripts_css">
 <link
			href="/IbnDocs/assets/global/plugins/datatables/datatables.min.css"
			rel="stylesheet" type="text/css" />
        <link
			href="/IbnDocs/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css"
			rel="stylesheet" type="text/css" />
        <link
			href="/IbnDocs/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"
			rel="stylesheet" type="text/css" />
        
       
</jsp:attribute>

	<jsp:attribute name="scripts_js_page_level_plugins">

<script src="/IbnDocs/assets/global/scripts/datatable.js"
			type="text/javascript"></script>
        <script
			src="/IbnDocs/assets/global/plugins/datatables/datatables.min.js"
			type="text/javascript"></script>
        <script
			src="/IbnDocs/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
			type="text/javascript"></script>
        <script
			src="/IbnDocs/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
			type="text/javascript"></script>
       
</jsp:attribute>
	<jsp:attribute name="scripts_js_page_level_scripts">
	<script>
		$(document).ready(function() {
			$("#produtoli").addClass('active open');
			

		});
	</script>

<script
			src="/IbnDocs/assets/pages/scripts/table-datatables-buttons.min.js"
			type="text/javascript"></script>
			
			
                
</jsp:attribute>
	<jsp:body>
${bodyContent}    
</jsp:body>
</t:master>


