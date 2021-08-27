<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pagina Inicial</title>
    <link href="estilos/estilo.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="flaticon.ico" type="image/x-icon">
</head>
<body>
    <div id="header">
    </div>
    
    <div id="menu">
        <a href="index.jsp" title="Ver Recados" class="botaomenu">Ver Recados</a>
        <a href="form.jsp" title="Gravar Recados" class="botaomenu">Gravar Recados</a>
    </div>

    <div id="content">
        <h1>Lista de Recados Gravados</h1>

        <%@page import = "java.io.*"%>

        <% 
        try  {

            String dir = request.getRealPath("/");
            String arq = dir + "/dados.txt";


            FileReader fr = new FileReader(arq);
            BufferedReader br = new BufferedReader(fr);
            
            String linha = "";
            while((linha = br.readLine()) != null) {
                String [] vet = linha.split(" # ");
                out.print(vet[2] + "<br>");
                out.print(vet[0] + " | " + vet[1]);
                out.print("<br><br>");
            }
        }
        catch (Exception e) {
            out.print("Nenhum Recado Foi Deixado");
        }
        %>

    </div>

    <div id="footer">
        by Paulo Renato # ficksjr@gmail.com

</body>
</html>