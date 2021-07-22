#require_relative 'index'

class funcionario
    attr_accessor :nome, :idade :cargo

    def initialize (nome, idade, cargo)
    if (opcao == 2)
        print 'Nome: '
        @nome = gets.to_s
        print 'Idade: '
        @idade = gets.to_s
        print 'Cargo: '
        @cargo = gets.to_s
    end


end