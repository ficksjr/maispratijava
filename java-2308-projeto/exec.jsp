<%@page import = "java.io.*"%>

<% 
// O arquivo só com o código JSP para gravação dos dados com

if (request.getParameter("sub") !=null ) {
    //pegar o nome, email, texto para

    String nom = request.getParameter("nom");
    String ema = request.getParameter("ema");
    String txt = request.getParameter("txt");

    String linha = nom + " # " + ema + " # " + txt;
    String dir = request.getRealPath("/");
    String arq = dir + "/dados.txt";
    FileWriter fw = new FileWriter(arq, true);
    BufferedWriter bw = new BufferedWriter(fw);
    PrintWriter pw = new PrintWriter(bw);
    pw.println(linha);
    pw.close();
    bw.close();
    fw.close();
}

response.sendRedirect("index.jsp");
%>