<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>File Upload</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<asset:javascript src="challengeone.js"/>   
<asset:stylesheet src="challengeone.css"/>    
</head>

<body>
	<form id="uploadfile">
		<div class="frame">
			<div class="center">
				<div class="title">
					<h1>Drop file to upload</h1>
				</div>

				<div class="dropzone">
					<img src="http://100dayscss.com/codepen/upload.svg"
						class="upload-icon" /> <input type="file" class="upload-input"
						id="file" />
				</div>
				<span id="error" style="color:red;display:none">Drag file or click on the cloud Symbol</span>   
				<input id="converttemp" class="btn" name="uploadbutton"
					type="submit" value="Upload file">
			</div>
		</div>
	</form>
	<table id="records_table" class="table" style="display:none">
		<thead class="thead-dark">
			<tr>
				<th scope="col">USER ID</th>
				<th scope="col">TOTAL COINS</th>
				<th scope="col">USERNAME</th>
			</tr>
		</thead>
		<tbody id="tbcontent">
			<g:each in="${userList}" var="user" status="i">
				<tr>
					<th scope="row">
						${user.userId}
					</th>
					<td>
						${user.coin}
					</td>
					<td>
						${user.userName}
					</td>
				</tr>
			</g:each>
		</tbody>
	</table>
	<div id="errorinfo" align="center"></div>     
</body>

</html>
