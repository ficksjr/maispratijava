
/**
 * Esta classe é para definição da classe Caneta
 * 
 * @author (Ficksjr) 
 * @version (v1.0)
 */
public class Caneta
{
     String cor;
     String tamanho;
     
     public void escrever(String txt){
         System.out.println(txt);
     }
     
     public void ajustarCor(String cor){
         this.cor = cor;
     }
     
     public void ajustarTamanho(String tamanho){
         this.tamanho = tamanho;
     }
}
