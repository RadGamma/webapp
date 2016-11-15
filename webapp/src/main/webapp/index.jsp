<html>
<body>
<h2>Hello World! Shit Motherfucker</h2>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
<script>
jQuery(document).ready(function($) {
  $.ajax({
  url : "http://api.wunderground.com/api/495ebf5ed805ee0d/geolookup/conditions/q/OH/Worthington.json",
  dataType : "jsonp",
  success : function(parsed_json) {
  var location = parsed_json['location']['city'];
  var temp_f = parsed_json['current_observation']['temp_f'];
  alert("Current temperature in " + location + " is: " + temp_f);
  }
  });
});
</script>
<img src="http://api.wunderground.com/api/495ebf5ed805ee0d/animatedradar/animatedsatellite/q/OH/Worthington.gif?num=6&delay=50&interval=30" alt="Mountain View" style="width:304px;height:228px;">

<object data=http://192.168.0.7/X10PHPTest/ width="600" height="400"> <embed src=http://localhost:8080/webapp/ width="600" height="400"> </embed> Error: Embedded data could not be displayed. </object>

--http://api.wunderground.com/api/Your_Key/alerts/q/IA/Des_Moines.json
</body>
</html>
