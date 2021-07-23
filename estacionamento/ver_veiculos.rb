require_relative 'menu'

class Ver_veiculos
    attr_reader :modelo, :cor, :placa
    
    def initialize (modelo, placa, cor)
        @modelo = modelo
        @placa = placa
        @cor = cor
    end

    def ver_veiculos(veiculos)
        puts "======= Veículos estacionados ======="
        puts

        veiculos.each do |veiculo|
            puts "#{veiculo[:modelo]} - #{veiculo[:cor]} - #{veiculo[:placa]}"
        end

        if veiculos.empty?
            puts "Não há veículos estacionados."
        end
    end
end
