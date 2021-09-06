<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 04 - EXEC JSP</title>
</head>
<body>
	<h1>
		Exemplo 04 - recebe o codigo do -link e faz o processamento.
	</h1>

	<%
	String scod = request.getParameter("codigo");
	boolean deucerto = false;

	//tratamento de erro do processamento
	try{

	//inicio do processamento
		int icod = Integer.parseInt(scod);
		if (icod ==123 ){
			deucerto = true;
		}
	//fim do processamento
	}
	catch(Exception e) {
		out.print("Bug: "+e.getMessage());
	}
	//fim do tratamento de erros do processamento

	if (deucerto) {
		out.print("Seja Bem vindo(a)!");
	}
	else {
		String voltar = "<a href='exemplo04-link.jsp?bug=true'>Voltar</a>";
		out.print("Codigo invalido");
	}
	%>
</body>
</html>