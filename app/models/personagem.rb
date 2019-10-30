class Personagem
  attr_reader :nome, :forca , :destreza,:constituicao, :inteligencia, :sabedoria,
              :carisma, :pontos_vida
  def initialize(nome)
    @nome = nome
    @forca = gerar_valor
    @destreza = gerar_valor
    @constituicao = gerar_valor
    @inteligencia = gerar_valor
    @sabedoria = gerar_valor
    @carisma = gerar_valor
    @pontos_vida = 10 + modificador_contituicao
  end

  private

  def modificador_contituicao
    valor = constituicao - (10 / 2.0).ceil

  end

  def gerar_valor
    valores = []
    4.times { valores << Dado.rolar }
    valores.sort[1..3].sum
  end
end
