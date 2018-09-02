$receitas = []
def menu_principal()
	puts "---   MENU PRINCIPAL   ---\n\n"
	puts "[1] Ver Receitas"
	puts "[2] Criar Receitas"
	puts "[3] Editar receitas"
	puts "[4] Excluir Receitas"
	puts "[5] Sair"

	print "\nO que você deseja fazer agora? Informe a sua opção: "
	@opcao = gets().to_i()
end
def criar_receita()
	puts "Digite o nome da receita: "
	receita = gets().chomp()
	$receitas<<receita
	puts "# - #{receita} cadastrada com sucesso!"
end
def ver_receita() 
	if $receitas.length-1 < 0
		puts "Você não tem nenhuma receita cadastrada =("
		puts "Deseja cadastrar uma receita agora? [1] Sim   [2] Não"
		opcao_auxiliar = gets().to_i() 
			if opcao_auxiliar == 1
			    criar_receita()
			    system("clear")	
			elsif opcao_auxiliar == 2
				system("clear")
				menu_principal()
			else
				puts "Você digitou ua opção inválida. =("
				print "Tente novamente, informe a opção desejada: "
				opcao_auxiliar = gets().to_i() 
			end
	else
		puts "#{ $receitas}"  
	end
end 	
def sair()
	puts "Obrigado por usar o COOKBOOK, até a próxima !! =)"
	exit()
end


puts "*** BEM VINDO AO COOKBOOK - A sua rede social de receitas culinária  ***"
puts "\n"
puts "\n"

menu_principal()


while 
	case @opcao
	when 1 then
		ver_receita()
		menu_principal()
		system("clear")
	when 2 then
		criar_receita()
		menu_principal()
		system("clear")
	when 3 then
		puts "Funcionalidade ainda não desenvolvida."
		puts "Deseja retornar ao menu inicial? [1]Sim [2]Sair"
		opcao_auxiliar = gets().to_i() 
		if opcao_auxiliar == 1
		    menu_principal()
		elsif opcao_auxiliar == 2
			sair()
		else
			puts "Você digitou ua opção inválida. =("
			print "Tente novamente, informe a opção desejada: "
			opcao_auxiliar = gets().to_i()
			system("clear")
		end
	when 4 then
		puts "Funcionalidade ainda não desenvolvida."
		puts "Deseja retornar ao menu inicial? [1]Sim [2]Sair]"
			opcao_auxiliar = gets().to_i() 
		if opcao_auxiliar == 1
		    menu_principal()
		elsif opcao_auxiliar == 2
			sair()
		else
			puts "Você digitou ua opção inválida. =("
			print "Tente novamente, informe a opção desejada: "
			opcao_auxiliar = gets().to_i() 
		end
	when 5
		sair()
	end
end
	puts "Você digitou uma opção inválida, mas não tem problema, você pode tentar novamente!!! =)"

	menu_principal()