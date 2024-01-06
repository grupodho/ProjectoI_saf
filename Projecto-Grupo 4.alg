registo Pessoa
	inteiro CodCl
	literal nome
	inteiro contacto
	literal Num_BI
	literal Morada
	literal Naturalidade
	
	
fimregisto
pessoa y
registo Contas
	inteiro NumConta
	inteiro CodCli, tipo_de_conta
	real saldo
fimregisto
inteiro cont
inteiro codigo<-1

inteiro ClientesCadastrados<-0
inteiro tipo_de_conta
	

Pessoa Clientes[100]
Contas conta[100]

funcao logico cadastro_de_clientes(Pessoa p)
	Clientes[ClientesCadastrados].CodCl<-p.CodCl
	Clientes[ClientesCadastrados].nome<-p.nome
	Clientes[ClientesCadastrados].contacto<-p.contacto
	clientes[ClientesCadastrados].Num_BI<-p.Num_BI
	clientes[clientesCadastrados].Morada<-p.Morada
	clientes[clientesCadastrados].Naturalidade<-p.Naturalidade
	
	conta[ClientesCadastrados].NumConta<-00000000000
	conta[ClientesCadastrados].Saldo<- 0
	conta[ClientesCadastrados].CodCli<-p.CodCl
	ClientesCadastrados <- ClientesCadastrados + 1
	retorne verdadeiro
fimfuncao
funcao logico transferir_dinheiro(inteiro num_da_conta_enviar,inteiro num_da_conta_receber,real valor)
	cont<-0

		mostre "\N================ Transferir Dinheiro ======================\N\N"
		inteiro numCont, numCont1, i
		mostre "Insira o número de conta a retirar o dinheiro: "
		leia numCont
		
		para cont de 0 ate ClientesCadastrados-1
			
			se numCont=Conta[cont].numConta entao
			faca
		      mostre "Insira o número de conta a receber o dinheiro: "
		      leia numCont1
			  cont<-0
				para cont de 0 ate ClientesCadastrados-1
					se numCont1=Conta[cont].numConta entao
						mostre "Qual é o valor a transferir?"
						leia valor
						Conta[cont].Saldo<- Conta[cont].Saldo + valor
					senao 
				         i<-i+1
					fimse
					se i=clientesCadastrados entao
						mostre "********* conta não Existente ********\n"
		                 mostre "\tDigite qualquer tecla para continuar "
					     LITERAL cont
					     leia cont
					fimse
				
				fimpara
				enquanto i=clientesCadastrados
			senao 
				mostre "********* conta não Existente ********\n"
		        mostre "\tDigite qualquer tecla para continuar "
					LITERAL cont
					leia cont
			fimse	
		fimpara

	retorne verdadeiro
fimfuncao

funcao logico Depositar_dinheiro ( inteiro numCont, real valor)
	
	conta[cont].Saldo <-conta[cont].Saldo + valor 
	mostre "Saldo atual é : ",conta[cont].Saldo, "\n"
	retorne verdadeiro 
fimFuncao

Funcao logico actualizar_dados(pessoa p,inteiro codigo_clientes)
	literal nome_act
		inteiro n,cont,Cl_enc
		
		escreva "Digite o nome do cliente a actualizar: "
			leia Nome_act
			para cont de 0 ate ClientesCadastrados - 1
				
				se clientes[cont].Nome = nome_act entao
					escreva cont+1,"Nome: ",clientes[cont].nome, "\nContacto: ", clientes[cont].contacto,"\nNumero do BI:",clientes[cont].Num_BI,"\nNaturalidade:",clientes[cont].Naturalidade,"\nMorada:",clientes[cont].Morada,"\n"
					escreva "\n--------------\n"
					Cl_enc<- Cl_enc + 1
				senao
					limpatela
					mostre"Esse nome não faz parte da nossa base de dados\n"
				
				fimse
			fimpara

			se Cl_enc > 1 entao
				escreva "Digite o numero do cliente a editar: "
				leia cont
			senao
				para cont de 0 ate ClientesCadastrados - 1
					se clientes[cont].nome = nome_act entao
						escreva "Novo Nome: "
						leia clientes[cont].nome
						escreva "Novo contacto: "
						leia clientes[cont].contacto
						escreva"Novo BI: "
						leia clientes[cont].Num_bI
						escreva "Nova Naturalidade: "
						leia clientes[cont].Naturalidade
						escreva"nova Morada: " 
						leia clientes[cont].Morada
				
					fimse
				
				fimpara
				fimse
	retorne verdadeiro
fimfuncao

procedimento listar_clientes()
	cont<-0
		literal Num_BI
		mostre "\N================ Lista de Clientes ======================\N\N"

		para cont de 0 ate ClientesCadastrados - 1
			mostre "\tCódigo:",Clientes[cont].CodCl,"\n"
			mostre "\tNome:",Clientes[cont].nome, "\n"
			mostre "\tTelefone:\t",Clientes[cont].contacto, "\n"
			mostre "\tNúmero do BI:\t",y.Num_BI,"\n"
			mostre "\tMorada:\t", y.Morada,"\n"
		 	mostre"\tNaturalidade:\t ",y.Naturalidade,"\n"
		 	mostre "\t", tipo_de_conta,"\n"
			mostre "----------------------------------------------   \n" 
		fimpara 
		
fimprocedimento

funcao logico Abertura_de_Conta (pessoa p, inteiro tipo_de_conta)
	inteiro codCli 
		
			escolha  conta[cont].tipo_de_conta
			 
			 caso 1:
				 limpatela
				   mostre "\N================ Conta Pessoal ======================\N\N"
				   mostre "\n\tDigite o id do Cliente a atribuir a conta: "
			       leia codCli 
	          
			 para cont de 0 ate ClientesCadastrados-1
				   se codCli=Clientes[cont].CodCl entao
					Mostre "\n\t Código do Cliente: ", conta[cont].codCli
					mostre "\t Nome do Cliente: ", clientes[cont].nome,"\n"
					mostre "\n Naturalidade do cliente: ",clientes[cont].naturalidade
					mostre "\t Bilhete do clente: ",clientes[cont].num_bI
				        
					mostre "\n Morada do cliente: ",clientes[cont].morada
					
					escreva "\n---------------------------------------------------------\n"
					mostre "\n\t OBS: Conta Aberta com sucesso!\N"
					mostre "\tDigite qualquer tecla para continuar "
					LITERAL cont
					leia cont
					limpatela
				fimse
			fimpara
			caso 2:
				 limpatela
				mostre "\N================ Conta Empresarial ======================\N\N"
				mostre "\n\tDigite o id do Cliente a atribuir a conta: "
			leia codCli
			 para cont de 0 ate ClientesCadastrados-1
				se codCli=Clientes[cont].CodCl entao
					Mostre "\n\tCódigo do cliente: ", conta[cont].codCli
					escreva "\tNome da Empresa: ", clientes[cont].nome,"\n"
					mostre "\n Naturalidade do cliente: ",clientes[cont].naturalidade
					mostre "\t NIF da Empresa: ",clientes[cont].num_bi
					mostre "\n Contacto da Emresa : ",clientes[cont].contacto
					mostre "\n localizacao da Emresa: ",clientes[cont].morada
					
					conta[cont].numConta<- (5000+codCli)
					mostre "\n\n\tNúmero de Conta atribudo: ", conta[cont].numConta,"\n"
					escreva "\n---------------------------------------------------------\n"
					mostre "\N\tOBS: Conta Aberta com sucesso!\N"
					mostre "\tDigite qualquer tecla para continuar: "
					LITERAL cont
					leia cont
				fimse
				fimpara		 	
			defeito:
				mostre "ººººººººººººººººººººººººººººººººººººººººººº"
			fimescolha
		

retorne verdadeiro 
fimfuncao 



funcao logico levantar_dinheiro ( inteiro numCont, real valor)
	se conta[cont].Saldo>=valor entao
	conta[cont].Saldo <-conta[cont].Saldo - valor 
	senao
		mostre "********* Saldo insuficiente*********\n"
	fimse
	retorne verdadeiro
fimfuncao


funcao logico consultar_saldo(inteiro num_da_conta)
	cont<-0
		mostre "\N================ Consultar Saldo ======================\N\N"
		inteiro numCont
		mostre "Insira o número de conta: "
		leia numCont
		para cont de 0 ate ClientesCadastrados-1
			
			se numCont=Conta[cont].numConta entao
				escreva "\tNome do Cliente: ", clientes[cont].nome,"\n"
				mostre "\t Saldo Disponível: ",conta[cont].Saldo
				mostre "\tDigite qualquer tecla para continuar "
				LITERAL cont
				leia cont
				limpatela
			senao
				mostre "Número de conta não existente!\n"
				mostre "\tDigite qualquer tecla para continuar "
				LITERAL cont
				leia cont
				limpatela
			fimse
				 	
			
		fimpara 
	
	retorne verdadeiro
	fimfuncao

inicio
	inteiro opcao
	ttempo t1
	limpatela
	faca
	mostre "*********** Sistema D.I.G 04 ***********\N\N"
    mostre "Hora:   " + temtexto(t1) + "\n"
    mostre "---------------------------- \n"
    MOSTRE "\N======================= MENU ===========================\N"
	
	mostre "\t1-Cadastrar Cliente \n\t2-Listar Clientes \n\t3-Abertura de Conta \n\t4-Depositar Dinheiro \n\t5-Levantar Dinheiro \n\t6-Consultar Saldo \n\t7-Transferir Dinheiro \n\t8-Actualizar Dados Do Cliente \n\t9-Terminar \n"
	mostre "---------------------------- \n"
	mostre "Escolha uma opção:"
	leia opcao
	limpatela
	escolha opcao
		
	caso 1:
		mostre "\n*********** CADASTRO DO CLIENTE *************\n\n"
		 y.CodCl<-codigo
		 codigo <- codigo + 1
		 mostre "\n\tCódigo: ",y.CodCl
		 mostre "\n\tNome do Cliente: "
		 leia y.nome
		 mostre "\tTelefone: "
		 leia y.contacto
		 mostre"\tNúmero do BI: "
		 leia y.Num_BI
		 mostre"\tMorada: "
		 leia y.Morada
		 mostre"\tNaturalidade: "
		 leia y.Naturalidade
		
		 
		 
		cadastro_de_clientes(y)
		escreva "---------------------------------------------------------\n"
		mostre "\N\tOBS: Cliente Cadastrado com sucesso!\N"
		mostre "\tDigite qualquer tecla para continuar "
		LITERAL cont
		leia cont
		limpatela
		 
	caso 2:
		listar_clientes()
		mostre "\tDigite qualquer tecla para continuar \n"
			LITERAL continuar
			leia continuar
			limpatela
	caso 3:
		cont <- 0
		mostre "\N================ Abertura de Conta ======================\N\N"
		MOSTRE "Escolha uma opcao: \n  1. Conta pessoal\n  2. Conta Empresarial\n  :"
		para cont de 0 ate ClientesCadastrados-1
		leia conta[cont].tipo_de_conta
		limpatela
		se tipo_de_conta > 2 entao 
			mostre "\n\n\n********* Digite a apenas um dos numero das opcoes ********"
			tpause (1000)
			limpatela
		fimse

	
	Abertura_de_Conta (y, tipo_de_conta)
		fimpara
		
	caso 4:
		real valor
			cont <- 0
			inteiro numCont
			mostre "\N================ Depósito ======================\N\N"
			mostre "Insira o número de conta: "
			leia numCont
			para cont de 0 ate ClientesCadastrados-1
				 
			se numCont=Conta[cont].numConta entao
					//Mostre "\n\tCódigo do Cliente: ", conta[cont].codCli
					escreva "\tNome do Cliente: ", clientes[cont].nome,"\n"
					mostre "\nQual é o valor a depositar?:"
					leia valor 
					
                      Depositar_dinheiro ( numCont, valor)
					mostre "\N\tOBS: Depósito Feito com sucesso!\N"
					mostre "\tDigite qualquer tecla para continuar "
					LITERAL cont
					leia cont 
					limpatela
				fimse
			fimpara 
	caso 5:
		cont<-0
			real valor
			mostre "\N================ Levantar Dinheiro ======================\N\N"
			inteiro numCont
			mostre "Insira o número de conta: "
			leia numCont
			para cont de 0 ate ClientesCadastrados-1
				
				se numCont=Conta[cont].numConta entao
					//Mostre "\n\tCódigo do Cliente: ", conta[cont].codCli
					escreva "\tNome do Cliente: ", clientes[cont].nome,"\n"
					mostre "\n\tNúmero de Conta: ", conta[cont].numConta
					mostre "\nQual é o valor a levantar?:"
					leia valor
					
						levantar_dinheiro ( numCont, valor)
						escreva "\n---------------------------------------------------------\n"
						mostre "\N\tOBS: Levantamento Feito com sucesso!\N"
						mostre "\tDigite qualquer tecla para continuar "
						LITERAL cont
						leia cont
						limpatela
					senao 
						mostre "********* Cliente inexistente!"
						mostre "\tDigite qualquer tecla para continuar "
						LITERAL cont
						leia cont
						limpatela
					fimse
			fimpara
	caso 6:
		//Consultar saldo
		
		inteiro num_conta
		
		consultar_saldo(num_conta)
		
	caso 7:
		//transferencia
		inteiro Num_env,Num_Rec
		real val
		transferir_dinheiro(Num_env,Num_Rec,val)
		
		
	caso 8:
		//Atualizacao de dados
		literal Nome_act
		inteiro n,cont,Cl_enc
		pessoa h
		inteiro v
		actualizar_dados( h,v)
		
	
		
	fimescolha
	enquanto opcao<>9	

	fficheiro Dados
    literal caminho <-"C:\\Users\\lenovo\\Documents\\Projecto isaf2024\\backup_isaf.txt"
    
	fAbrir (dados, caminho, falso)
	inteiro contador
	para contador de 0 ate ClientesCadastrados
	fEscrever( dados,  strintparastr(clientes[contador].CodCl)+"-"+ clientes[contador].nome +"-"+ clientes[contador].num_bi +"-"+ strintparastr(clientes[contador].contacto)+"-"+ clientes[contador].naturalidade+"-"+ clientes[contador].morada )
	fNovaLinha(dados)
	fimpara
	fFechar (dados)
fimalgoritmo