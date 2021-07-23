require_relative 'menu'

class Funcionario
    attr_accessor :nome, :idade, :cargo

    def initialize (nome, idade, cargo)
        @nome = nome
        @idade = idade
        @cargo = cargo
    
    end

    def reg_funcionario()
        print "Seu nome: "
        nome = gets.chomp()
        print "Sua idade: "
        idade = gets.chomp()
        print "Seu cargo: "
        cargo = gets.chomp()

        puts "Funcionário #{nome} cadastrado com sucesso."
        puts

        return {nome: nome, idade: idade, cargo: cargo}
    end
end