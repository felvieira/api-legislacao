class Details
  attr_accessor :ementa, 
    :situacao, 
    :chefe_do_governo, 
    :origem, 
    :fonte, 
    :link, 
    :referenda, 
    :alteracao, 
    :correlacao,
    :interpretacao,
    :veto,
    :assunto,
    :classificacao_de_direito,
    :observacao

  def initialize(params)
    @ementa                   = params[:ementa]                     
    @situacao                 = params[:situacao] 
    @chefe_do_governo         = params[:chefe_do_governo]        
    @origem                   = params[:origem]                  
    @fonte                    = params[:fonte] 
    @link                     = params[:link] 
    @referenda                = params[:referenda] 
    @alteracao                = params[:alteracao] 
    @correlacao               = params[:correlacao]
    @interpretacao            = params[:interpretacao]
    @veto                     = params[:veto]
    @assunto                  = params[:assunto]
    @classificacao_de_direito = params[:classificacao_de_direito]
    @observacao               = params[:observacao]
  end
end
