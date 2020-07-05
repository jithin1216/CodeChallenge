<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>File Upload</title>
<style type="text/css">
.uploadfile {
    width: 50px;
    position: relative;
    left: 515px;
}

.mainform {
    position: relative;
    top: 45px;  
}
</style>
</head>   

<body>
<div class="mainform">
<h1 align="center">Challenge One To Upload File</h1> 
<div class="uploadfile"> 
<g:uploadForm controller="fileUpload" action="upload"> 
				<fieldset class="form">
                    <input type="file" name="file" />
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="upload" class="save" value="Upload" />
				</fieldset>
			</g:uploadForm>  
</div>
</div>    
</body>

</html>
