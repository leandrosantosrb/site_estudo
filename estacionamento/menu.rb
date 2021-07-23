require_relative 'reg_funcionario'
require_relative 'reg_veiculo'
require_relative 'ver_veiculos'


REG_FUNCIONARIO = 1
REG_VEICULO = 2
VER_VEICULO = 3
SAIR = 4

def menu()
    puts "[#{REG_FUNCIONARIO}] Cadastrar funcionário."
    puts "[#{REG_VEICULO}] Cadastrar veículo."
    puts "[#{VER_VEICULO}] Ver veículos cadastrados."
    puts "[#{SAIR}] Sair do programa."

    return gets.to_i()
end
