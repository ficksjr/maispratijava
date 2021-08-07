public class TesteString
{
    public static void main(String[] args){
        String texto1 = "texto teste 1";
        //provando que o String é uma classe e as variáveis
        //objetos criados de instância da classe pai
        String texto2 = new String("texto teste do objeto");
        
        System.out.println(texto1.toUpperCase());
        System.out.println(texto1.substring(5,4));
        System.out.println(texto1.equals("diferente"));
        System.out.println(texto1.charAt(7));
        
        
        //declara-se um vetor (array) usando colchetes
        //no Java, temos vetores com tipos definidos
        String[] vetor = texto1.split(" ");
        
        System.out.println(vetor[4]);
    }
}
