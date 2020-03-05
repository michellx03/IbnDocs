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
			<li><a href="/IbnDocs/Dashboard/index">Dashboardd</a>
				<i class="fa fa-circle"></i></li>
			<li><span> Responsavel</span> <i class="fa fa-circle"></i></li>
			<li><a href="/IbnDocs/Responsavel/Consulta">Consulta</a>
				<i class="fa fa-circle"></i></li>
			<li><span>Cadastro</span></li>
		</ul>
		<div class="page-toolbar"></div>
	</div>

	<!-- END PAGE BAR -->
	<!-- BEGIN PAGE TITLE-->
	<h1 class="page-title">
		Cadastro de Responsavel <small>Campos Obrigatórios (*)</small>
	</h1>
	<!-- END PAGE TITLE-->
	<!-- END PAGE HEADER-->

	<div class="row">
		<div class="col-md-12">
			<!-- BEGIN VALIDATION STATES-->
			<div class="portlet light portlet-fit portlet-form bordered"
				id="form_wizard_1">

				<div class="row">
					<div class="col-md-12">
						<!-- BEGIN VALIDATION STATES-->
						<div class="portlet light portlet-fit portlet-form bordered">

							<div class="portlet-body">
								<!-- BEGIN FORM-->
								<form action="/IbnDocs/Responsavel/Salvar"
									id="form_sample_2" method="POST" class="form-horizontal">

									<input style="display: none" name="resId" id="resId"
										value="${responsavel.resId}">

									<div class="form-body">
										<div style="width: 90%; margin-left: 5%;"
											class="alert alert-danger display-hide">
											<button class="close" data-close="alert"></button>
											Por favor verifique os erros abaixo!
										</div>
										<div class="form-group  margin-top-20">
											<label class="control-label col-md-3">Responsavel <span
												class="required"> * </span>
											</label>
											<div class="col-md-4">
												<div class="input-icon right">
													<i class="fa"></i> <input type="text" class="form-control"
														name="resResponsavel" id="resResponsavel"  value="${responsavel.resResponsavel}" />
												</div>
											</div>
										</div>
										
										<div class="form-group margin-top-20">
													<label for="single" class="control-label col-md-3">Selecione a empresa</label>
												<div class="col-md-4">
													<div class="input-icon right">
															<select id="singleAlter" class="form-control select2" name="respEmpresa">
															<option value="">Selecione uma opcao</option>	
																<% 		
																	EntityManager emEmpresa = new ConexaoEntityFactory().getEntityManager();
																	Query queryListaEmpresa = (Query) emEmpresa.createNativeQuery("SELECT emp_id, emp_empresa FROM sistema.empresa");
																	List<Object[]> listEmpresa = queryListaEmpresa.getResultList();
																	for (Object[] obj : listEmpresa) { 
																%>
																<option value="<%out.print(obj[0]);%>"><%out.print(obj[1]);%></option>	
																														
																<%
																	}
																%>	

															</select>
														</div>
													</div>	
												</div>
												
												<div class="form-group margin-top-20">
													<label for="single" class="control-label col-md-3">Selecione um setor</label>
												<div class="col-md-4">
													<div class="input-icon right">
															<select id="singleSetor" class="form-control select2" name="respSetor">
															<option value="">Selecione uma opcao</option>	
																<% 		
																	EntityManager emSetor = new ConexaoEntityFactory().getEntityManager();
																	Query queryListaSetor = (Query) emSetor.createNativeQuery("SELECT set_id, set_setor FROM sistema.setor");
																	List<Object[]> listSetor = queryListaSetor.getResultList();
																	for (Object[] obj : listSetor) { 
																%>
																<option value="<%out.print(obj[0]);%>"><%out.print(obj[1]);%></option>	
																														
																<%
																	}
																%>	

															</select>
														</div>
													</div>	
												</div>
												
										
									</div>



									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-3 col-md-9">
												<button type="submit" class="btn green">
													<%
														if (request.getParameter("id") == null) {
																out.print("Cadastrar");
															} else {
																out.print("Alterar");
															}
													%>
												</button>
											</div>
										</div>
									</div>
								</form>
								<!-- END FORM-->
							</div>
						</div>
						<!-- END VALIDATION STATES-->
					</div>
				</div>
			</div>
		</div>
	</div>



</c:set>
<t:master>

	<jsp:attribute name="scripts_css">
	
	<link href="/IbnDocs/assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
		<link href="/IbnDocs/assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />
        
</jsp:attribute>

	<jsp:attribute name="scripts_js_page_level_plugins">

        <script
			src="/IbnDocs/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"
			type="text/javascript"></script>
<script
			src="/IbnDocs/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"
			type="text/javascript"></script>
			
			<script src="/IbnDocs/assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
		<script src="/IbnDocs/assets/pages/scripts/components-select2.min.js"type="text/javascript"></script>
                       
</jsp:attribute>
	<jsp:attribute name="scripts_js_page_level_scripts">
	
	<script>
			$(document).ready(function(){	
				$("#single").select2();	
				$("#singleAlter").select2();
				$("#singleSetor").select2();
			});
		</script>
	
	<script>
		$(document).ready(function() {
			$("#produtoli").addClass('active open');
			
			
			if( $("#imgDaTela").attr("src") == ""){
				$("#imgDaTela").hide();
			}
			
			$("#imagem").change(function(){
				
				var file = document.querySelector('#imagem').files[0];
				getBase64(file);
				
			});

		});
		
		function getBase64(file) {
	           var reader = new FileReader();
	           reader.readAsDataURL(file);
	           reader.onload = function () {
	             console.log(reader.result.length);
	             $("#fotoParaSubir").val(reader.result);
	             $("#imgDaTela").attr("src",reader.result);
	             $("#imgDaTela").show();
	          
	           };
	           reader.onerror = function (error) {
	             console.log('Error: ', error);
	           };
	        }

	       
	
		
	</script>

<script
			src="/IbnDocs/assets/pages/scripts/form-validation.min.js"
			type="text/javascript"></script>
        			
                
</jsp:attribute>
	<jsp:body>
${bodyContent}    
</jsp:body>
</t:master>


