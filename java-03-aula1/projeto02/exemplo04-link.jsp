<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 04 - JSP</title>
</head>
<body>
	<h1> Exemplo 04 - Testes com o link</h1>
	<br>
	<p>Ao clicar no link, você será redirecionado à pagina do processamento.</p>
	<br>
	<a href="exemplo04-exec.jsp?codigo=123">Clique aqui para fazer o processamento</a>
	<br>

	<%
	//aqui vai receber o parâmetro do exec
		String bug = request.getParameter("bug");
		if (bug!=null){
			if (bug.equals("true")){
				out.print(bug);
			}	
		}
	%>
</body>
</html>