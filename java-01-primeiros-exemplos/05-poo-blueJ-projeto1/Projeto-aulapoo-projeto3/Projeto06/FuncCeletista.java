
/**
 * Esta é a classe que define o FuncCeletista
 */
public class FuncCeletista extends Funcionario
{
    private double bas; 
    
    /**
     * Construtor para objetos da classe FuncIntegral
     */
    public FuncCeletista(String nom, String ema, double bas){
        super(nom, ema);
        
        this.bas = bas;
    }
    
    //método para realizar o cálculo do salário do funcionário
    public double calcularSalario(){
        double sal = this.bas - bas * this.TAX;
        return sal;
    }
}
