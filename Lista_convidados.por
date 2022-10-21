programa
{
inclua biblioteca Util --> u
	cadeia convidados[100]
	inteiro opcao  
	cadeia nome
	cadeia apa
	cadeia rem
	logico ver
	funcao inicio()
	{
	 faca {
		escreva("\n==========MENU========||\n")
		escreva("[ 1 ] Cadastrar Pessoa||\n")
		escreva("[ 2 ] Listar Pessoas  ||\n")
		escreva("[ 3 ] Remover Pessoas ||\n")
		escreva("[ 4 ] Sair            ||\n")
		escreva("======================||\n")
		escreva("Opção: ")
		leia(opcao)

			escolha(opcao){
	
			caso 1: 
				limpa()
				escreva("Cadastrar\n")
				escreva("Qual o nome do convidado? ")
				leia(nome)
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] == "")
					{
						convidados[i] = nome
						pare
					}
					
				}
				
				

				pare
				
			caso 2:
				limpa() 
				escreva("Listar\n")
				para(inteiro i=0; i < 100; i++){
					
						se(convidados[i] != "")
						{
							escreva(i+1, "º convidado: ",convidados[i], "\n")
						}
						senao se(convidados[i] == "")
						{
							para(inteiro j=i; j < 100-i; j++){
								inteiro posi = (j - 1) +1
								se(convidados[j] == "")
								{
									ver = falso
								}
								senao se(convidados[j] != "")
								{
									ver = verdadeiro
								}
								se(ver == verdadeiro)
								{
									escreva(posi, "º convidado: ",convidados[j], "\n")
								}
							}
							pare
						}
				}
				
				pare

			caso 3:
				limpa()
				escreva("Remover\n")
				escreva("Nome que deseja remover: ")
				leia(rem)
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] == rem)
					{
						convidados[i] = ""
					}
				}
				pare

			caso 4:
				escreva("Fim do programa! Merci!")
				pare
				
			caso contrario: 
				escreva("Essa função não existe\n")
				u.aguarde(1000)
				limpa()
				pare
			}
		 
	 }enquanto(opcao != 4)
		
	   
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {convidados, 4, 8, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */