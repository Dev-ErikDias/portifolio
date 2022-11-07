programa
{
	inclua biblioteca Util --> u
	cadeia convidados[100]
	inteiro opcao  
	inteiro c = 0
	cadeia nome
	cadeia rem
	logico ver
	inteiro cont = 0
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
				se(c == 100)
				{
					escreva("Lista cheia")
					pare
				}
				limpa()
				escreva("Cadastrar\n")
				escreva("Qual o nome do convidado? ")
				leia(nome)
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] == "")
					{
						convidados[i] = nome
						cont += 1
						pare
					}
					
				}
				c += 1
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
				escreva("Ainda tem ", 100 - cont, " vagas para convidados!")
				u.aguarde(1000)
				pare

			caso 3:
			faca{
				limpa()
				escreva("Remover\n")
				escreva("Nome que deseja remover: ")
				leia(rem)
				para(inteiro i=0; i < 100; i++){
					se(convidados[i] == rem)
					{
						ver = verdadeiro 
						convidados[i] = ""
						cont -= 1
						pare
					}
					senao
					{
						ver = falso
					}
				}
				se(ver == falso)
				{
					escreva("O convidado não foi encontrado.")
					u.aguarde(1000)
				}
			}enquanto(ver == falso)
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
