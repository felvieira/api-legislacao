class Rule
  attr_accessor :identif, :data, :situacao, :ementa, :detalhes

  def initialize(params)
    @identif  = params[:identif]
    @data     = params[:data]
    @situacao = params[:situacao]
    @ementa   = params[:ementa]
    @detalhes = params[:detalhes]
  end
end
