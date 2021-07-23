require_relative 'menu'
require_relative 'reg_funcionario'
require_relative 'reg_veiculo'
require_relative 'ver_veiculos'

class Complemento
    opcao = menu()
    funcionario = []
    veiculos = []

    loop do
        if(opcao == REG_FUNCIONARIO)
            funcionario << reg_funcionario()
    
        elsif(opcao == REG_VEICULO)
            veiculos << reg_veiculo()
        
        elsif(opcao == VER_VEICULO)
            ver_veiculos(veiculos)
            puts
        
        elsif(opcao == SAIR)
            puts "Obrigado por usar o estacionamento."
            puts
            break
        
        else
            puts "Opção inválida."
        end

        opcao == menu()
    end
end