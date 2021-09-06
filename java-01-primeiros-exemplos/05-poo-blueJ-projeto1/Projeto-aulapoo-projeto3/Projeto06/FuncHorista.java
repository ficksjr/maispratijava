
/**
 * Esta classe é a que define os métodos do Funcionário Horista
 * @
 */
public class FuncHorista extends Funcionario
{
    private int qtd;
    private double val;
    
    /**
     * Construtor para os objetos da classe FuncHorista
     */
    
    public FuncHorista(String nom, String ema, int qtd, double val){
        //chama o construtor da classe pai por herança
        super(nom, ema);
        
        //inicialização de outras variáveis específicas da classe
        this.qtd = qtd;
        this.val = val;
        //outros métodos da classe pai
        // super.setNome(""); ou this.set("");
    }
    
    //método para realizar o cálculo do salário
    public double calcularSalario(){
        double bas = this.qtd * this.val;
        double sal = bas - bas * this.TAX;
        return sal;
    }
}
