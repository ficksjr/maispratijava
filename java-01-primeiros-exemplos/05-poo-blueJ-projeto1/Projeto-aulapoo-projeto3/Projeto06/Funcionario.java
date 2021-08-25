
/**
 * Nesta classe é determinado o processamento de cálculo dos funcionários
 * 
 */
public abstract class Funcionario
{
    //usa-se protected para puder utilizar a constante somente nas classes herdeiras
    protected final double TAX = 0.1; 
    
    //outros atributos com acesso privado
    private String nom;
    private String ema;
    
    /**
     * Construtor para objetos da classe Funcionario
     */
    
    public Funcionario(){
        this.nom = "vazio";
        this.ema = "vazio@vazio.com.br";
    }
    public Funcionario(String nom, String ema){
        this.nom = nom;
        this.ema = ema;
    }
    
    public void setName(String nom){
        this.nom = nom;
    }
    
    public String getNome(){
        return this.nom;
    }
    
    public abstract double calcularSalario();
}
