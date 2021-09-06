
/**
 * Uma classe que representa o processamento aritmético para operações simples
 * - Calculadora Simples
 * 
 * @author (ficksjr) 
 * @version (1.1)
 */
public class Calculadora
{
    public static double exec(double n1, double n2, String op){
        double res = 0;
        if (op.equals("+")){
            res = n1 + n2;
        }
        else if (op.equals("-")){
            res = n1 - n2;
        }
        else if (op.equals("*")){
            res = n1 * n2;
        }
        else if (op.equals("/")){
            res = n1 / n2;
        }
        else {
            res = 0;
        }
        return res;
    }
}
