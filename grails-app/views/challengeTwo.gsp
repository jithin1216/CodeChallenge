<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Temperature Calculator</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<asset:javascript src="main.js"/> 
<asset:stylesheet src="style.css"/>

</head>
<body>
<div class="login-form">
    <form class="addcustomer">
        <h2 class="text-center">Temperature Calculator</h2>       
        <div class="form-group">
            <input id="temp" name="temp" type="text" class="form-control" placeholder="Enter Celsius or Fahrenheit" required="required">
        </div>
        <div class="form-group">
            <input id="value" name="value" type="text" class="form-control" placeholder="Value" required="required">
        </div>
        <div class="form-group">
            <input id="converttemp" name="saveForm" type="submit" class="btn btn-primary btn-block" value="submit"/>
        </div>
        <div class="form-group">
            <input id="output" name="output" type="text" class="form-control" placeholder="Result" readonly="readonly"> 
        </div>
        <div id="errormsg" style="display: none">Enter Celsius or Fahrenheit properly</div>       
    </form>
    <p class="text-center"><g:link controller="logout" > Logout</g:link></p>      
</div>
</body>
</html>