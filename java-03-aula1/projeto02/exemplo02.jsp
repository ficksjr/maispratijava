<!DOCTYPE html>
<html>
<head>
    <title>Exemplo 02</title>
</head>
<body>
    <h1> Exemplo 02 - JSP</h1>

    <%
     //a estrutura básica do Java permanece funcionando aqui
    //a declaração de variáveis, tipos de dados, seleção, repetição, etc.
    int ini = 1;
    int fim = 10;
    int soma = 0;
    int cont =0;
    String result ="";

    for (int i=ini; i<=fim; i++){
        if (i%2 == 0){
            result = result + i + " - ";
            soma = soma + i;
            cont ++;
        }
    }

    //mostra o resultado
    out.print(result + "<br>");
    out.print("quantidade de números pares :" + cont + "<br>");
    out.print("soma de números pares :" + soma + "<br>");
    %>
</body>
</html>