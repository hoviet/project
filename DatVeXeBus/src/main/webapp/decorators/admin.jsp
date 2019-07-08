<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp"%>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <title>ĐẶT VÉ XE BAY</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="description" content="#">
            <meta name="keywords" content="Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
            <meta name="author" content="#">
            <!-- Favicon icon -->
            <link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/files/bower_components/bootstrap/css/bootstrap.min.css'/>">
            <!-- feather Awesome -->
            <link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/files/assets/icon/feather/css/feather.css'/>">
            <!-- Style.css -->
            <link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/files/assets/css/style.css'/>">
            <link rel="stylesheet" type="text/css" href="<c:url value='/template/admin/files/assets/css/jquery.mCustomScrollbar.css'/>">
        </head>

        <body>
            <!-- Pre-loader end -->
            <div id="pcoded" class="pcoded">
                <div class="pcoded-overlay-box"></div>
                <div class="pcoded-container navbar-wrapper">

                    <%@include file="/common/admin/header.jsp"%>
                        <!-- menu-->
                        <div class="pcoded-main-container">
                            <div class="pcoded-wrapper">
                                <%@include file="/common/admin/menu.jsp"%>
                                    <dec:body/>
                            </div>
                        </div>
                </div>
            </div>

            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/jquery/js/jquery.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/jquery-ui/js/jquery-ui.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/popper.js/js/popper.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/bootstrap/js/bootstrap.min.js'/>"></script>
            <!-- jquery slimscroll js -->
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/jquery-slimscroll/js/jquery.slimscroll.js'/>"></script>
            <!-- modernizr js -->
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/modernizr/js/modernizr.js'/>"></script>
            <!-- Chart js -->
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/chart.js/js/Chart.js'/>"></script>
            <!-- amchart js -->
            <script src="<c:url value='/template/admin/files/assets/pages/widget/amchart/amcharts.js'/>"></script>
            <script src="<c:url value='/template/admin/files/assets/pages/widget/amchart/serial.js'/>"></script>
            <script src="<c:url value='/template/admin/files/assets/pages/widget/amchart/light.js'/>"></script>
            <script src="<c:url value='/template/admin/files/assets/js/jquery.mCustomScrollbar.concat.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/assets/js/SmoothScroll.js'/>"></script>
            <script src="<c:url value='/template/admin/files/assets/js/pcoded.min.js'/>"></script>
            <!-- custom js -->
            <script src="<c:url value='/template/admin/files/assets/js/vartical-layout.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/assets/pages/dashboard/custom-dashboard.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/assets/js/script.min.js'/>"></script>

            <!--  -->
            <script type="text/javascript" src="<c:url value='/template/admin/files/assets/pages/form-validation/form-validation.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/modernizr/js/css-scrollbars.js'/>"></script>
            <!-- Validation js -->
            <script src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.8.3/underscore-min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/assets/pages/form-validation/validate.js'/>"></script>
            <!-- i18next.min.js -->
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/i18next/js/i18next.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js'/>"></script>
            <script type="text/javascript" src="<c:url value='/template/admin/files/bower_components/jquery-i18next/js/jquery-i18next.min.js'/>"></script>
            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        </body>

        </html>