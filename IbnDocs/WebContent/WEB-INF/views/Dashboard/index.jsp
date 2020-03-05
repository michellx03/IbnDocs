<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:master>

<jsp:attribute name="scripts_css">
 <link href="/IbnDocs/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="/IbnDocs/assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="/IbnDocs/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
       
</jsp:attribute>

<jsp:attribute name="scripts_js_page_level_plugins">

 <script src="/IbnDocs/assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/morris/morris.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/ammap/maps/js/worldLow.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
        <script src="/IbnDocs/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
       
  
      <script>
$(document).ready(function(){
	$("#dashboardli").addClass('active open');
	$("#dashboard_li_index").addClass('active open');
	
	
});
			</script>
</jsp:attribute>


<jsp:attribute name="scripts_js_page_level_scripts">
  <script src="/IbnDocs/assets/pages/scripts/dashboard.min.js" type="text/javascript"></script>
      
    
</jsp:attribute>


<jsp:body>
       
 <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.html">Home</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>Dashboard</span>
                                </li>
                            </ul>
                           
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title"> Painel Administrativo
                            <small>Resumo de documentos</small>
                        </h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <!-- BEGIN DASHBOARD STATS 1-->
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a class="dashboard-stat dashboard-stat-v2 blue" href="#">
                                    <div class="visual">
                                        <i class="fa fa-comments"></i>
                                    </div>
                                    <div class="details">
                                        <div class="number">
                                            <span data-counter="counterup" data-value="1349">0</span>
                                        </div>
                                        <div class="desc">Total de Documentos </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a class="dashboard-stat dashboard-stat-v2 red" href="#">
                                    <div class="visual">
                                        <i class="fa fa-bar-chart-o"></i>
                                    </div>
                                    <div class="details">
                                        <div class="number">
                                            <span data-counter="counterup" data-value="12">0</span></div>
                                        <div class="desc"> Mab </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a class="dashboard-stat dashboard-stat-v2 green" href="#">
                                    <div class="visual">
                                        <i class="fa fa-shopping-cart"></i>
                                    </div>
                                    <div class="details">
                                        <div class="number">
                                            <span data-counter="counterup" data-value="549">0</span>
                                        </div>
                                        <div class="desc"> IBN </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <a class="dashboard-stat dashboard-stat-v2 purple" href="#">
                                    <div class="visual">
                                        <i class="fa fa-globe"></i>
                                    </div>
                                    <div class="details">
                                        <div class="number">
                                            <span data-counter="counterup" data-value="89"></span>0</div>
                                        <div class="desc"> Lab IBN </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                       
</jsp:body>
</t:master>