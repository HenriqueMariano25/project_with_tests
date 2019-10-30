require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  def setup
    @personagem = Personagem.new("henrique")
  end

  test "verificar se tem um nome" do
    assert_equal "henrique", @personagem.nome
  end

  test "valores das habilidades validos" do
    assert_includes 3..18 , @personagem.forca
  end
end
