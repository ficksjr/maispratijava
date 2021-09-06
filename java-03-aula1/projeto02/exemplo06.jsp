<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 06 - Tudojunto</title>
</head>
<body>
	<h1>Exemplo 06 - Formulário e processamento</h1>

	<form action="exemplo06.jsp" method="POST">
		Informe um numero inteiro: <br>
		<input type="number" name="num1"><br><br>
		Informe um outro numero inteiro: <br>
		<input type="number" name="num2"><br><br>
		<button name="env">Calcular</button>
	</form>

	<%
	boolean bug = false;
	String env = request.getParameter("env");
	if (env != null) {
		String sn1 = request.getParameter("num1");	
		String sn2 = request.getParameter("num2");
		try {
			int in1 = Integer.parseInt(sn1);
			int in2 = Integer.parseInt(sn2);

			if (in1 > in2) {
				int aux = in1;
				in1 = in2;
				in2 = aux;
			}

			for (int i=in1; i<=in2; i++){
				if (i%2 == 1) {
				out.println(i + " - ");
				}
			}
		}
		catch (Exception e) {
			bug = true;
		}
	}
	else {
		bug = true;
	}
	%>

	<%
	//String bug = request.getParameter("bug");
	if (bug) {
		out.print("Informe os dados pelo formulario");
	}
	%>

</body>
</html>