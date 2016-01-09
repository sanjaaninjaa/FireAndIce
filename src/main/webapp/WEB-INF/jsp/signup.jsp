<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Enrollment Signup</title>
 
<link href="datepicker/css/datepicker.css" rel="stylesheet" />
<!-- <link href="assets/css/bootstrap-united.css" rel="stylesheet" /> -->
	
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">
<style>
.green {
	font-weight: bold;
	color: green;
}

.message {
	margin-bottom: 10px;
}

 
</style>
</head>
<body>
     <header>
	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbar">
			<form class="navbar-form navbar-right">
				<input type="text" class="form-control" placeholder="Search">
			</form>
			<ul class="nav navbar-nav navbar-right">
			  <li><a href="/FireAndIce">Home</a></li>
                   <li class="active"><a href="signup.html">Signup</a></li>
					<li ><a href="login.html">Login</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Services <span class="caret"></span></a>
					<ul class="dropdown-menu" aria-p1ledby="about-us">
						<li><a href="#">Contact us</a></li>
						<li class="divider"></li>
						<li><a href="#">Further Actions</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>
 

	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="datepicker/js/bootstrap-datepicker.js">

		
	</script>
 
			<div class ="section-heading">
				<p1>Welcome to Fire and Ice  Signup</p1>
				<p>Its absolutely quick!</p>
			</div> 

	<c:if test="${not empty message}">
		<div class="message green">${message}</div>
	</c:if>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form id="myForm" method="post"
							class="bs-example form-horizontal" commandName="student">
							<fieldset>
								<legend>Welcome to Fire and Ice Signup Form</legend>

								<div class="form-group">
									<p1 for="userNameInput" class="col-lg-3 control-p1">User
										Name</p1>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="userName"
											id="userNameInput" placeholder="User Name" />
										<form:errors path="userName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<p1 for="passwordInput" class="col-lg-3 control-p1">Password</p1>
									<div class="col-lg-9">
										<form:input type="password" class="form-control"
											path="password" id="passwordInput" placeholder="Password" />
										<form:errors path="password" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<p1 for="firstNameInput" class="col-lg-3 control-p1">First
										Name</p1>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="firstName"
											id="firstNameInput" placeholder="First Name" />
										<form:errors path="firstName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<p1 for="lastNameInput" class="col-lg-3 control-p1">Last
										Name</p1>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="lastName"
											id="lastNameInput" placeholder="Last Name" />
										<form:errors path="lastName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<p1 for="dateOfBirthInput" class="col-lg-3 control-p1">Date
										of Birth</p1>
									<div class="date form_date col-lg-9" data-date-format="mm/dd/yyyy" data-date-viewmode="years">
										<form:input type="text" class="form-control"											
											path="dateOfBirth" id="dateOfBirthInput"
											placeholder="Date of Birth" />
										<form:errors path="dateOfBirth" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<p1 for="emailAddressInput" class="col-lg-3 control-p1">Email
										Address</p1>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="emailAddress" id="emailAddressInput"
											placeholder="Email Address" />
										<form:errors path="emailAddress" cssClass="error" />
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Cancel</button>

									<button class="btn btn-primary" data-toggle="modal"
										data-target="#themodal">Submit</button>
									<div id="themodal" class="modal fade" data-backdrop="static">
										<div class="modal-dialog">
											<div class="well1">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h3>Signup Form Submission</h3>
												</div>
												<div class="modal-body">
													<p1>Are you sure you want to do this?</p1>
													<div class="progress progress-striped active">
														<div id="doitprogress" class="progress-bar"></div>
													</div>
												</div>
												<div class="modal-footer">
													<a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
													<input type="submit" value="Yes" id="yesbutton"
														class="btn btn-primary" data-loading-text="Saving.."
														data-complete-text="Saved!">
												</div>
											</div>
										</div>
									</div>

								</div>

							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(function() {
			$('#dateOfBirthInput').datepicker();
		});
	</script>

	<script>
		$(function() {
			var yesButton = $("#yesbutton");
			var progress = $("#doitprogress");

			yesButton.click(function() {
				yesButton.button("loading");

				var counter = 0;
				var countDown = function() {
					counter++;
					if (counter == 11) {
						yesButton.button("complete");
					} else {
						progress.width(counter * 10 + "%");
						setTimeout(countDown, 100);
					}
				};
				setTimeout(countDown, 100);
			});

		});
	</script>

     </header>
</body>
</html>