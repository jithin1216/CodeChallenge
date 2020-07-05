<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<asset:javascript src="main.js"/>   
<asset:stylesheet src="style.css"/>
</head>   

<body>

<form class="addcustomer">   
  <header>
    <h2>Temperature Converter</h2>
    <div>Give Temperature unit as Celsius/Fahrenheit and value(eg: 20)</div>
  </header>
  
  <div>
    <label class="desc" id="title1" for="Field1">Temp Unit(Celsius/Fahrenheit)</label> 
    <div>
      <input id="temp" name="temp" type="text" class="field text fn" size="8" tabindex="1">
    </div>
  </div>
    
  <div>
    <label class="desc" id="title2" for="Field3">
      Value
    </label>
    <div>
      <input id="value" name="value" type="text" spellcheck="false" maxlength="255" tabindex="3"> 
   </div>
  </div>
  <div>
    <label class="desc" id="title2" for="Field4">
      Result
    </label>
    <div>
      <input id="output" name="output" type="text" spellcheck="false"  tabindex="3" readonly="true"> 
   </div>
  </div>
  <div>
		<div>
  		 <input id="converttemp" name="saveForm" type="submit" value="Submit"> 
    </div>
	</div>
  
</form>
     

</body>

</html>
