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
</head>

<body>
<h1 align="center">UPLOADED DATA</h1> 
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">USER ID</th>
				<th scope="col">TOTAL COINS</th>
				<th scope="col">USERNAME</th>
			</tr>
		</thead>
		<tbody>
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

</body>

</html>
