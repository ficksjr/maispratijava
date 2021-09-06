<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="estilos/estilo.css" rel="stylesheet">
</head>
<body>
    <div id="header">
    </div>
    
    <div id="menu">
        <a href="index.jsp" title="Ver Recados" class="botaomenu">Ver Recados</a>
        <a href="form.jsp" title="Gravar Recados" class="botaomenu">Gravar Recados</a>
    </div>


    <div id="content">
        <h1>Formulario para gravar Recado</h1>
        <form action="exec.jsp" method="get">
            Informe o seu nome: <br>
            <input type="text" name="nom" id="nome"> <br><br>
            
            Informe o seu email: <br>
            <input type="text" name="ema" id="email"> <br><br>

            Deixe seu recado: <br>
            <textarea name="txt" id="recado" cols="30" rows="5"></textarea> <br><br>

            <input type="submit" name="sub" value="Cadastrar">
        </form>
    </div>


    <div id="footer">
        by Paulo Renato # ficksjr@gmail.com
    </div>
</body>
</html>