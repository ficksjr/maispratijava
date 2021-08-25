
/**
 * Esta classe é a que inicia o software
 * 
 * @author (ficksjr) 
 * @version (1.0)
 */
public class Principal
{
    public static void main(String[] args){
     //Inicializando a classe principal utilizando herança da classe funcionário
    Funcionario func = null;
    
    // definindo as variáveis que irão compor os métodos a seguir
    String nom = Tela.retornaTxt("Nome");
    String ema = Tela.retornaTxt("E-mail");
    String tip = Tela.retornaTxt("H - Horista | C - Celetista");
    
    // direcionando a escolha para a instânia e para o método adequado conforme escolha anterior
    if (tip.equals("H")){
        int qtd = Tela.retornaInt("Quantidade de horas trabalhadas: ");
        double val = Tela.retornaDbl("Valor pago por hora: ");
        func = new FuncHorista(nom, ema, qtd, val);
    }
    else if(tip.equals("C")){
        double sal = Tela.retornaDbl("Salário mensal base: ");
        func = new FuncCeletista(nom, ema, sal);
    }
        
    double sal = func.calcularSalario();
    nom = func.getNome();
    Tela.mostraTxt(nom + ", seu salário será R$" + sal);
    }
    

}
