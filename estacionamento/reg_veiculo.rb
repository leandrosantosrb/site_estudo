require_relative 'menu'

class Veiculo
    attr_accessor :modelo, :placa, :cor

    def initialize (modelo, placa, cor)
        @modelo = modelo
        @placa = placa
        @cor = cor
    end

    def reg_veiculo()
        print "Modelo: "
        modelo = gets.chomp.to_s()
        print "Placa: "
        placa = gets.chomp.to_s()
        print "Cor: "
        cor = gets.chomp.to_s()

        puts "#{modelo} #{cor} de placa #{placa} estacionado."
        puts

        return {modelo: modelo, placa: placa, cor: cor}
    end
end