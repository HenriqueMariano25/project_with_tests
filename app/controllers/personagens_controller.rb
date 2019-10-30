class PersonagensController < ApplicationController
  def index
    @personagem = Personagem.new(params[:name])
  end
end
