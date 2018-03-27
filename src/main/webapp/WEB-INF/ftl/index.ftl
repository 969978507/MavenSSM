<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	</head>
	<body>
		<#if user??>
			<p>尊敬的${user.name},欢迎来到${title}</p>
		<#else>
			<p>欢迎来到${title}</p>
		</#if>
	</body>
</html>