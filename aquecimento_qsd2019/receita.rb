require 'json'
require 'sqlite3'

$db = SQLite3::Database.open('cookbook.db')

class Receita
  attr_accessor :nome, :tipo

  def initialize(nome:, tipo:)
    @nome = nome
    @tipo = tipo
  end

  def to_s
    "#{nome} - #{tipo}"
  end

  def to_json(options = {})
    { nome: nome, tipo: tipo }.to_json(options)
  end

  def include?(termo)
    termo.downcase!
    nome.downcase.include?(termo)
  end

  def self.busca(termo)
    busca = $db.execute("SELECT * FROM receitas WHERE nome LIKE '#{termo}%'")
    puts "Não encontrado" if !busca
    puts busca
    # receitas.select do |receita|
    #   receita.include?(termo)
    # end
  end

  def self.create(nome, tipo)
    $db.execute("INSERT INTO receitas(nome,tipo) VALUES(?,?)", nome, tipo)
  end
  

  def self.read()
    $db.execute("SELECT * FROM receitas") do |row|
      puts row
    end
  end 

  # def self.save(receitas)
  #   File.open('receitas.json', 'w') do |file|
  #     file.puts receitas.to_json
  #   end
  # end

  # def self.load
  #   json = File.read('receitas.json')
  #   receitas_hash = JSON.parse(json, symbolize_names: true)
  #   receitas_hash.map do |hash|
  #     Receita.new(hash)
  #   end
  # end
end