<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetching Json</title>
</head>
<body>
<h1>Fetching Details Json</h1>

	<!-- <button type="button" id="fecthBtn" class="btn btn-primary">
		Fetch Data By Data Base</button> -->
	<!-- <button type="button" id="popBtn" class="btn btn-secondary">
		Populate By Json Call</button> -->
		<button onclick="popHandler()">PushButtonToFetchJson</button>
		
		<script>
		function popHandler() {
			  console.log('You have clicked the pop handler');

			  // Instantiate an xhr object
			  let xhr = new XMLHttpRequest();

			  // Open the object
			  xhr.open('GET', 'nareshBook.json', true);

			  // What to do when response is ready
			  xhr.onload = function () {
			    if (this.status === 200) {
			      let obj = JSON.parse(this.responseText);
			      console.log(obj);
			      
			      $.ajax({
			    	     url: 'GetJsonData',
			    	     type: 'POST', 
			    	     dataType: 'json',
			    	     data: JSON.stringify(obj),
			    	     success: function(result) {
			    	       alert('SUCCESS');
			    	     }
			    	});
			      
			    } else {
			      console.log('Some error occured');
			    }
			  };

			  // send the request
			  
			  xhr.send();
			}
		
		</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="Ajax.js"></script>
</body>
</html>