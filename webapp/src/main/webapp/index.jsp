<html>
	
	<head>
		  <link rel="stylesheet" href="styles.css">
	</head>
	<body>
	
		<h1>Home Automation</h1>	
		
		<h2 style="font-family:verdana;"id="location"></h2>
		<h2 style="font-family:verdana;"id="temp"></h2>
		<h2 style="font-family:verdana;"id="icon"></h2>
		
		<img src="nothing.jpg" id="image" name="image" width="104" height="142"/>
		
		
		
		
		
		
		
	
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
		<script>
			jQuery(document).ready(function($) {
			  $.ajax({
			  url : "http://api.wunderground.com/api/495ebf5ed805ee0d/geolookup/conditions/q/OH/Worthington.json",
			  dataType : "jsonp",
			  success : function(parsed_json) {
			  var location = parsed_json['location']['city'];
			  var temp_f = parsed_json['current_observation']['temp_f'];
			  var icon = parsed_json['current_observation']['icon_url'];
			  
			  //alert("Current temperature in " + location + " is: " + temp_f);
				document.getElementById("location").innerHTML = location;
				document.getElementById("temp").innerHTML = temp_f;
				document.getElementById('image').src = icon;
			  
			  }
			  });
			});
			
		</script>
		
		<img src="http://api.wunderground.com/api/495ebf5ed805ee0d/animatedradar/animatedsatellite/q/OH/Worthington.gif?num=6&delay=50&interval=30" alt="Mountain View" style="width:304px;height:228px;">
		
		<object data=http://192.168.0.11/X10PHPTest/ width="600" height="400"> <embed src=http://localhost:8080/webapp/ width="600" height="400"> </embed> Error: Embedded data could not be displayed. </object>

		<!--http://api.wunderground.com/api/495ebf5ed805ee0d/alerts/q/OH/Worthington.json -->
		
	
	</body>

</html>
