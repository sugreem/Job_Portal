<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
	function validation() {
		swal("Job Added Successfully");
	}
</script>

<title>Insert title here</title>
</head>
<body>
	<div style="background-color: #34495e; opacity: 1">
		<center>
			<div class="container" style="color: white">

				<form action="addjob.jsp" method="post">
					<table class="table table-bordered" style="width: 60%;">
						<thead>
							<tr>
								<th colspan="2">

									<div
										style="background-color: black;; color: white; height: 60px;">
										<h2>
											<b> Add Job</b>
										</h2>
									</div>
									<br>
								</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td><b>RecruiterId</b></td>
								<td><input type="text" name="recruiterid" required=""
									placeholder="RecruiterId" class="form-control"></td>
							</tr>
							<tr>
								<td><b>Company:</b></td>
								<td><input type="text" name="company" required=""
									placeholder="company" class="form-control"></td>
							</tr>
							<tr>
								<td><b>Skills:</b></td>
								<td><input type="text" name="skills" required=""
									placeholder="skills" class="form-control"></td>
							</tr>
							<tr>
								<td><b>Salary:</b></td>
								<td><input type="text" name="salary" required=""
									placeholder="Salary" class="form-control"></td>
							</tr>

							<tr>
								<td><b>Date of Interview:</b></td>
								<td><input type="text" name="doi" required=""
									placeholder="Date of Interview" class="form-control"></td>
							</tr>

							<tr>
								<td><b>Description:</b></td>
								<td><input type="text" name="description" required=""
									placeholder="Description" class="form-control"></td>
							</tr>
							<tr>
								<td><b>Location:</b></td>
								<td><input type="text" name="location" required=""
									placeholder="Location" class="form-control"></td>
							</tr>


							<tr>

								<td><input type="reset" value="Reset" class="btn "
									style="background-color: black;"></td>
								<td><button class="btn btn-xs" onclick="validation();">
										<input type="submit" value="Add" class="btn "
											style="background-color: black;">
									</button></td>
								<%
									for (int i = 0; i <= 1000000000; i++) {
									}
								%>
							</tr>
						</tbody>
					</table>

				</form>
			</div>
		</center>
	</div>
</body>
</html>