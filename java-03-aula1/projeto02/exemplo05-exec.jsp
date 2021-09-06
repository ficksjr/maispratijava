<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 05 - Exec</title>
</head>
<body>
	<h1>Exemplo 05 - Processamento</h1>

	<%
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
								out.print(i + " - ");
							}
						}
					}
					catch (Exception e) {
						out.print("Bug: " + e);
					}
				}
				else {
					response.sendRedirect("exemplo05-form.jsp?bug=true");
				}
	%>

</body>
</html>