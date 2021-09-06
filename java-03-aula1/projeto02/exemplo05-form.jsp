<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 05 - Form</title>
</head>
<body>
	<h1>Exemplo 05 - Formulario</h1>

	<form action="exemplo05-exec.jsp" method="POST">
		Informe um número inteiro: <br>
		<input type="text" name="num1"><br><br>
		Informe um outro número inteiro: <br>
		<input type="text" name="num2"><br><br>
		<button name="env">Calcular</button>
	</form>

	<%
	String bug = request.getParameter("bug");
	if (bug!= null) {
		if (bug.equals("true")) {
			out.print("Informe os dados pelo formulário")
		}
	}
	%>
</body>
</html>