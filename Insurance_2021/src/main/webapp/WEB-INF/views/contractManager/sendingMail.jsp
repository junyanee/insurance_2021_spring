<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page import="java.util.List"%>
<%@ page import="com.insurance.sce.model.contract.Contract"%>
<%@ page import="com.insurance.sce.model.customer.Insurant"%>
<%List<Contract> contractList = (List<Contract>)request.getAttribute("contractList");%>
<%List<Insurant> insurantList = (List<Insurant>)request.getAttribute("insurantList");%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>보험사</title>

    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/css/sb-admin-2.min.css" rel="stylesheet">

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
                <div class="sidebar-brand-text mx-3"><h3>송충이들</h3></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="cancerInsurance">
                    <i class="fas fa-fw fa-list"></i>
                    <span>계약 리스트 확인하기</span></a>
            </li>
            
            <hr class="sidebar-divider my">
            
            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href=#>
                    <i class="fas fa-fw fa-book"></i>
                    <span>우편물 발송하기</span></a>
            </li>

            <hr class="sidebar-divider my">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href=#>
                    <i class="fas fa-fw fa-handshake"></i>
                    <span>보험료 미납 고객 관리하기</span></a>
            </li>
            
            <hr class="sidebar-divider my">
            
            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href=#>
                    <i class="fas fa-fw fa-check-square"></i>
                    <span>만기계약 관리하기</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Insurance
            </div>
            
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
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
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">안녕하세요 ${customerName} 님!</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>
                        
                        
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        		<button type="button" class="btn btn-outline-success" onClick="location.href='cancerInsurance'">보험 리스트 보기</button>
                        	</a>
						</li>                        
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        		<button type="button" class="btn btn-outline-dark" onclick="location.href='myPage/doLogout'">로그아웃</button>
                        	</a>
						</li>                        
                        

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">계약 리스트 확인하기</h1>
                    </div>

                   
					<br>
                    
                    

                        <!-- Content Column -->
                        
   <ul class="list-group list-group-horizontal"   >
 


  <li class="list-group-item col-1">보험가입자 아이디</li>
  <li class="list-group-item col-1" >계약보험 아이디</li>
  <li class="list-group-item col-1">계약자 성명</li>
  <li class="list-group-item col-1">계약자 주소</li>
</ul>
<%for(Contract contract : contractList){ %>
<%for(Insurant insurant : insurantList){ %>		
<ul class="list-group list-group-horizontal-sm"   >

  <li class="list-group-item col-1"><%=contract.getInsurantId()%></li>
  <li class="list-group-item col-1"><%=contract.getContractId() %></li>
  <li class="list-group-item col-1"><%=insurant.getName() %></li>
  <li class="list-group-item col-1"><%=insurant.getAddress() %></li>
</ul>
<%}; %>
<%}; %>
</div>
                <!-- /.container-fluid -->

            
            <!-- End of Main Content -->

            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="resources/vendor/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value="resources/vendor/jquery-easing/jquery.easing.min.js" />"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value="resources/js/sb-admin-2.min.js" />"></script>

    <!-- Page level plugins -->
    <script src="<c:url value="resources/vendor/chart.js/Chart.min.js" />"></script>

    <!-- Page level custom scripts -->
    <script src="<c:url value="resources/js/demo/chart-area-demo.js" />"></script>
    <script src="<c:url value="resources/js/demo/chart-pie-demo.js" />"></script>

</body>

</html>