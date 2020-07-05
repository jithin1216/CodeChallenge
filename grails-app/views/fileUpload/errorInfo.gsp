<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
	
	<style type="text/css">
	div#errordiv {
    position: relative;
    top: 54px;
}
	</style>   
	
</head>

<body>
<div id="errordiv">
<h3 align="center">ERROR WHILE UPLOADING</h3>
<div id="errorinfo" align="center">
<g:each in="${errorList}" var="error" status="i">
  <div style="color:red">Error at line no:${error}</div>
</g:each>
</div> 
</div>
</body>
</html>
