import javax.swing.JOptionPane;

/**
 * Classe para obter os dados do número e tratá-lo para enviar para classe principal.
 * 
 * @author (ficksjr) 
 * @version (1.0)
 */
public class Tela
{
    /**
     * Método que exibe uma janela de diálogo para receber um texto e retornar um inteiro.
     * 
     * @param (String) 
     * @return (int)
     */
    public static int retornaInt(String txt){
        //usa o método do Java para abrir uma janela de diálogo
        //sempre retorna uma String        
        String snum = JOptionPane.showInputDialog(txt);
        
        //converter a String em um número inteiro
        int inum = Integer.parseInt(snum);
        
        return inum;
    }
    
    /**
     * Método que exibe uma janela de diálogo para receber um texto e retornar ele.
     * 
     * @param (String) 
     * @return (String)
     */
    public static String retornaTxt(String txt) {
        String sval = JOptionPane.showInputDialog(txt);
        return sval;
    }
       
    /**
     * Método que exibe uma janela de diálogo para receber um texto e retornar um double
     * 
     * @param (String) 
     * @return (double)
     */
    public static double retornaDbl(String txt) {
        String sval = retornaTxt(txt);
        double dval = Double.parseDouble(sval);
        return dval;
    }
    
    /**
     * Método que exibe uma janela de diálogo com o texto informado do parâmetro
     * 
     * @param (String) 
     */
    
    public static void mostraTxt(String txt){
        JOptionPane.showMessageDialog(null, txt);
    }
}
