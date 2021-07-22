REG_FUNCIONARIO = 1
REG_VEICULO = 2
VER_VEICULO = 3
SAIR = 4

def menu()
    puts "[#{REG_FUNCIONARIO}] Registrar funcionário."
    puts "[#{REG_VEICULO}] Registrar veículo."
    puts "[#{VER_VEICULO}] Ver veículos registrados."
    puts "[#{SAIR}] Sair do programa."

    return gets.to_i()
end

def reg_funcionario()
    print "Nome: "
    nome = nome.new.gets.chomp()
    print "Idade: "
    idade = gets.chomp()
    print "Cargo: "
    cargo = gets.chomp()

    return {nome: nome, idade: idade, cargo: cargo}
end

def reg_veiculo()
    print "Modelo: "
    modelo = gets.chomp.to_s()
    print "Cor: "
    cor = gets.chomp.to_s()
    print "Placa: "
    placa = gets.chomp.to_s()
    puts

    puts "#{modelo} de cor #{cor} e placa #{placa} estacionado."
    puts

    return {modelo: modelo, cor: cor, placa: placa}
end

def ver_veiculos(veiculos)
    puts "======= Carros estacionados. ======="
    puts

    veiculos.each do |veiculo|
        puts "#{veiculo[:modelo]} - #{veiculo[:cor]} - #{veiculo[:placa]}"

    end
    if veiculos.empty?
        puts "Não há carros estacionados."
    end
end

opcao = menu()
funcionario = []
veiculos = []

loop do
    if (opcao == REG_FUNCIONARIO)
        funcionario << reg_funcionario()

    elsif (opcao == REG_VEICULO)
        veiculos << reg_veiculo()

    elsif (opcao == VER_VEICULO)
        ver_veiculos(veiculos)
        puts

    elsif (opcao == SAIR)
        break

    else
        puts "Opção inválida."
    end
    
    opcao = menu()

end