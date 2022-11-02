programa
{
	inclua biblioteca Texto --> t	
		caracter alfabeto[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'}
		inteiro chave = 0
	 	cadeia frase
	 	cadeia res 

	funcao inicio()
	{
		escreva("Deseja criptografar ou descriptografar?\n")
		leia(res)

		se(res == "criptografar")
		{
		limpa()
		escreva("Qual a frase a ser criptografada?")
		leia(frase)
		}
		senao se(res == "descriptografar")
		{
		limpa()
		escreva("Qual a frase a ser descriptografada?")
		leia(frase)
		}
		limpa()	
		escreva("Qual a chave desejada?")
		leia(chave)
		
		se(res == "criptografar")
		{
			criptografar()
		}
		senao se(res == "descriptografar")
		{
			descriptografar()
		}
	}

	funcao criptografar()
	{
		inteiro numeroLetras = t.numero_caracteres(frase)
		limpa()
		escreva("A frase tem ", numeroLetras, " letras. \n")
		para(inteiro i=0; i < numeroLetras; i++){
			caracter letra = t.obter_caracter(frase, i)

			//Posição da letra no alfabeto!!!!!!!!!!!!!
			para(inteiro j=0; j <= 26; j++){
					se(letra == ' ')
					{
						escreva(" ")
						pare
					}
					senao se(letra == alfabeto[j])
					{
						inteiro posicaoCriptografada = (j + chave) % 26

						escreva(alfabeto[posicaoCriptografada])					
						pare
					}
				}			
			}
						
	}

	funcao descriptografar()
	{
		inteiro numeroLetras = t.numero_caracteres(frase)
		limpa()
		escreva("A frase tem ", numeroLetras, " letras. \n")
		para(inteiro i=0; i < numeroLetras; i++){
			caracter letra = t.obter_caracter(frase, i)

			//Posição da letra no alfabeto!!!!!!!!!!!!!
			para(inteiro j=0; j <= 26; j++){
					se(letra == ' ')
					{
						escreva(" ")
						pare
					}
					senao se(letra == alfabeto[j])
					{
						inteiro posicaoCriptografada = ((j + chave) - numeroLetras) % 26

						escreva(alfabeto[posicaoCriptografada])					
						pare
					}
				}			
		}
	}
}
