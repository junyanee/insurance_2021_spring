<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<%@ page import="java.util.List"%>
<%@ page import="com.insurance.sce.model.insurance.Insurance"%>
<%
	List<Insurance> insuranceList = (List<Insurance>)request.getAttribute("insuranceList");
	int notDel = 0;
	int isDel = 0;
	for(Insurance insurance: insuranceList){
		if(insurance.isDel()) isDel++;
		else notDel++;
	}
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>송충이들</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>	

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">송충이들</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
           <li class="nav-item active">
               	 <a class="nav-link" href="developInsurance.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>보험 설계하기</span></a>
            </li>
             <li class="nav-item active">
               	 <a class="nav-link" href="postManageInsurance.do">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>보험 사후관리하기</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Insurance
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                   

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">


                        <div class="topbar-divider d-none d-sm-block"></div>
                       <li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
								<button type="button"
									onclick="location.href='login.do'"
									class="btn btn-outline-dark">로그아웃</button>
						</a></li>

                    </ul>

                </nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">보험 사후관리하기</h1>
					</div>

					<!-- Content Row -->
					<div class="row">

						
					</div>
					
					<!-- Content Row -->
					<div class="row">

						<!-- Content Column -->
						<div class="col-xl-3 col-md-6 mb-4" id="goDeleteInsurance">
							<div class="cardInsurance">
								<form id="form-deleteInsurance" action="deleteInsurance" method="get"></form>
								<!-- Project Card Example -->
								<div class="card shadow mb-4">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">보험 삭제하기</h6>
									</div>

									<div class="card-body row">
										<div class="col no-gutters align-items-center">
											삭제 요청이 가능한 보험의 개수 : <%=notDel%>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="col-xl-3 col-md-6 mb-4" id="goRestoreInsurance">
							<div class="cardInsurance">
								<form id="form-restoreInsurance" action="restoreInsurance" method="get"></form>
								<!-- Project Card Example -->
								<div class="card shadow mb-4">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">보험 복구하기</h6>
									</div>

									<div class="card-body row">
										<div class="col no-gutters align-items-center">
											복구 요청이 가능한 보험의 개수 : <%=isDel%>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /.container-fluid -->
			</div>
			</div>
			</div>
			<!-- End of Main Content -->
			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2021</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<script>
	$('#goDeleteInsurance').click(function(){
		$("#form-deleteInsurance").submit();
	});
	$('#goRestoreInsurance').click(function(){
		$("#form-restoreInsurance").submit();
	});
	</script>
	<!-- Bootstrap core JavaScript-->
	<script src="<c:url value="resources/vendor/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="<c:url value="resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>

	<!-- Custom scripts for all pages-->
	<script src="<c:url value="resources/js/sb-admin-2.min.js" />"></script>

	<!-- Page level plugins -->
	<script src="<c:url value="resources/vendor/chart.js/Chart.min.js" />"></script>

	<!-- Page level custom scripts -->
	<script src="<c:url value="resources/js/demo/chart-area-demo.js" />"></script>
	<script src="<c:url value="resources/js/demo/chart-pie-demo.js" />"></script>

</body>

</html>
