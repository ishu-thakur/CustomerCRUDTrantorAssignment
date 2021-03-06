<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Customer</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script>
	var worldData = {
		USA : {
			California : [ "Los Angeles", "San Diego", "Sacramento" ],
			Texas : [ "Houston", "Austin" ],
			Florida : [ "Miami", "Orlando", "Tampa" ],
		},
		India : {
			Maharashtra : [ "Mumbai", "Pune", "Nagpur" ],
			TamilNadu : [ "Chennai", "Madurai" ],
			Karnataka : [ "Bangalore", "Mangalore" ],
		},
		Canada : {
			Alberta : [ "Calgary", "Edmonton", "Red Deer" ],
			BritishColumbia : [ "Vancouver", "Kelowna" ],
			Manitoba : [ "Winnipeg", "Brandon" ],
		},
		Germany : {
			Bavaria : [ "Munich", "Nuremberg" ],
			NorthRhine : [ "Cologne", "Düsseldorf" ],
		},
	};
	window.onload = function() {
		var countyList = document.getElementById("countyList"), stateList = document
				.getElementById("stateList"), cityList = document
				.getElementById("cityList");
		for ( var country in worldData) {
			countyList.options[countyList.options.length] = new Option(country,
					country);
		}
		countyList.onchange = function() {
			stateList.length = 1;
			cityList.length = 1;
			if (this.selectedIndex < 1)
				return;
			for ( var state in worldData[this.value]) {
				stateList.options[stateList.options.length] = new Option(state,
						state);
			}
		};
		countyList.onchange();
		stateList.onchange = function() {
			cityList.length = 1;
			if (this.selectedIndex < 1)
				return;
			var city = worldData[countyList.value][this.value];
			for (var i = 0; i < city.length; i++) {
				cityList.options[cityList.options.length] = new Option(city[i],
						city[i]);
			}
		};
	};
</script>
<style>
body {
	font-family: 'Lato', sans-serif
}

h1 {
	margin-bottom: 40px
}

label {
	color: #333
}

.btn-send {
	font-weight: 300;
	text-transform: uppercase;
	letter-spacing: 0.2em;
	width: 80%;
	margin-left: 3px
}

.help-block.with-errors {
	color: #ff5050;
	margin-top: 5px
}

.card {
	margin-left: 10px;
	margin-right: 10px
}
</style>
</head>
<body>
	<div class="container">
		<div class=" text-center mt-5 ">
			<h1>Update Customer Form</h1>
		</div>
		<div class="row ">
			<div class="col-lg-7 mx-auto">
				<div class="card mt-2 mx-auto p-4 bg-light">
					<div class="card-body bg-light">
						<div class="container">
							<form id="contact-form" role="form" action="/update"
								method="post">
								<div class="controls">
									<div class="row form-group col-md-12">
										<label for="form_lastname">Customer id *</label> <input
											type="text" name="cid" class="form-control"
											placeholder="Please enter your customer id *"
											required="required" data-error="Cutomer id is required.">
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">Customer Name *</label> <input
													id="form_lastname" type="text" name="name"
													class="form-control" placeholder="Please enter your Name *">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">Customer telephone *</label> <input
													id="form_lastname" type="text" name="phone"
													class="form-control" placeholder="9087251931*">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_need">Customer Type </label> <select
													id="form_need" name="type" class="form-control">
													<option value="" selected disabled>--Select Your
														customer type--</option>
													<option>seller</option>
													<option>buyer</option>
												</select>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="form_lastname">Street </label> <input
													id="form_lastname" type="text" name="street"
													class="form-control" placeholder="1234 st. *">
											</div>
										</div>
									</div>
									<div class="lists">
										<label>Select Country </label> <select name="country"
											id="countyList" class="form-control">
											<option value="" selected="selected">Select Country</option>
										</select>
									</div>
									<div class="lists">
										<label>Select State </label> <select name="state"
											id="stateList" class="form-control">
											<option value="" selected="selected">Select State</option>
										</select>
									</div>
									<div class="lists">
										<label>Select City </label> <select name="city" id="cityList"
											class="form-control">
											<option value="" selected="selected">Select City</option>
										</select>
									</div>
								</div>
								<div class="d-flex justify-content-center" class="col-md-12">
									<input type="submit"
										class="btn btn-success btn-send pt-2 btn-block" value="Update">
								</div>
								<div class="d-flex justify-content-center" class="col-md-12">
									<a href="mainPage.jsp" class="button">Back</a>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.8 -->
	</div>
	<!-- /.row-->
</body>
</html>