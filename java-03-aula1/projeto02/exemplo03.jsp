<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 3 - JSP</title>
</head>
<body>
	<h1>
		Exemplo 03 - JSP

		Executando testes enviando parâmetros para o servidor com os métodos HTTP (GET e POST)
	</h1>

	<%
		String msg = "";

		//fazendo tratamento de erro
		try {

			//aqui recebe o parametro idade
			String sida = request.getParameter("idade"); 
			//idade=23 
			//vou receber aqui como "23"

			//convertendo o parametro recebido no request para numero inteiro
			int iida = Integer.parseInt(sida);

			if (iida >= 18) {
				msg = "Acesso liberado ao site";
			}
			else {
				msg = "Acesso negado ao site";
			}

			//mostrando no navegador

		}
		catch (NumberFormatException ne){
			msg = "Bug: " + ne.getMessage();
		}
		catch (Exception e) {
			msg = "Erro: " + e.getMessage();
		}
		out.print(msg);
	%>

</body>
</html>
