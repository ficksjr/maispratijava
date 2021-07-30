
/**
 * Esta é a classe principal onde vão ser executados os métodos das outras classes.
 * 
 * @author (Ficksjr) 
 * @version (v1.0)
 */
public class Principal
{
    public static void main(String[] args) {
        // criação da instância nova 'bic' que é um objeto.
        Caneta bic = new Caneta();
        
        // utilizando o método escrever() do objeto criado 'bic'
        
        bic.ajustarCor("Azul");
        bic.ajustarTamanho("5mm");
        bic.escrever("Texto escrito na cor " + bic.cor + " com tamanho " + bic.tamanho);
    }
}
