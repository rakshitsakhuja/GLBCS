<!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>iccs2015venue</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<!--[if IE 7]>
		<link rel="stylesheet" href="css/ie7.css" type="text/css">
	<![endif]-->
    <style>
      #map_canvas {
        width: 600px;
        height: 300px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
		var myLatlng = new google.maps.LatLng(28.472015, 77.4888460);
        var map_options = {
          center: myLatlng,
          zoom: 15,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(map_canvas, map_options)
		var marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      title: 'G. L. bajaj Institute of Technology & Management, Greater Noida'
  });
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
	<div id="header">
		<div>
			<div>
				<div align="center"><span>International Conference on Cybernatics &amp; Security</span>
				  
			      </div>
			</div>
	  <ul>
				<li>
					<a href="index.html">home</a>
				</li>
				<li>
					<a href="#">ICCS 2015</a>
				</li>
				<li>
					<a href="#">CALL FOR PAPERS</a>
				</li>
				<li>
					<a href="#">IMPORTANT DATES</a>
				</li>
				<li>
					<a href="iccs2015papersubmission.html">PAPER SUBMISSION</a>
				</li>
				<li class="selected">
					<a href="iccs2015venue.html">CONFERENCE VENUE</a>
				</li>
				
			</ul>
		</div>
	</div>
	<div id="body">
		<div class="content">
			<div id="section">
				<h2>Venue</h2>
				<p><b>Way through GoogleAPI</b></p>
                <div id="map_canvas"></div>
				<hr><p><b>Our Campus</b> <img src="clgfront.jpg" alt="" width="570" height="280">			          </p>
                                <form action="iccscomp.jsp" method="post">
					<hr><b>send us a message</b> <span>Any inconvency, immediately inform to us.</span>
					<input type="text" name="fname" id="fname" value="Name">
					<input type="text" name="email" id="email" value="Email Addess">
					<select name="query1">
						<option>Select Your Query Type</option>
                        <option>Route Problem</option>
                        <option>Other</option>
					</select>
					<textarea name="message" id="message" cols="20" rows="10">Write Message Here...</textarea>
					<input type="submit" name="send" id="send" value="send message">
				</form>
			</div>
			<div id="sidebar">
				<div class="search">
					<h3>search</h3>
					<form action="index.html">
						<input type="text" name="search" id="search" value="Search here...">
						<input type="hidden" name="submit" id="submitBtn" value="">
					</form>
				</div>
				<div class="contact">
					<h3>contact information</h3>
					<ul class="first">
						<li class="office">
							<b>Conference Venue</b><span>Knoweldge Park III, Greater Noida, India</span>						</li>
						<li class="telephone">
							812-607-0820						</li>
						<li class="fax">
							812-607-0820						</li>
						<li class="email">
						<a href="http://www.freewebsitetemplates.com/misc/contact">iccs2015@glbitm.org</a></li>
					    <li class="email">icss2015@gmail.com </li>
					</ul>
			  <ul>
						<li class="office">
							<b> Matura Campus</b><span>Mathura, India</span>
						</li>
						<li class="telephone">812-607-0820
						</li>
						<li class="fax">
							804-417-2483
						</li>
						<li class="email">
							<a href="http://www.freewebsitetemplates.com/misc/contact">info@glbitm.org</a>
						</li>
					</ul>
				</div>
				<div>
					<h3>Route Maps:</h3>
				  <span>Airway<span>Delhi Airport to Venue</span></span><span>Cabs are available to conference venue.<hr></span> <span>Saturdays &amp; Sundays <span>7:00 a.m. - 12:00 p.m.</span></span>				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<div>
			<p>
				Copyright &copy; <a href="iccs2015.html">ICCS 2015</a>
			</p>
			<ul>
				<li>
					<a href="index.html">HOME</a>
				</li>
				<li>
					<a href="iccs2015.html">ICCS 2015</a>
				</li>
				<li>
					<a href="#">CALL FOR PAPERS</a>
				</li>
				<li>
					<a href="#">IMPORTANT DATES</a>
				</li>
				<li>
					<a href="iccs2015papersubmission.html">PAPER SUBMISSION</a>
				</li>
				<li>
					<a href="iccs2015venue.html">CONFERENCE VENUE</a>
				</li>
				</ul>
			<div>
				<span>stay connected:</span>
				<a href="http://freewebsitetemplates.com/go/facebook/" id="facebook">facebook</a>
				<a href="http://freewebsitetemplates.com/go/twitter/" id="twitter">twitter</a>
				<a href="http://freewebsitetemplates.com/go/googleplus/" id="googleplus">googleplus</a>
			</div>
		</div>
	</div>
</body>
</html>