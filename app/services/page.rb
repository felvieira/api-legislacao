class Page
  attr_accessor :link, :text

  def initialize(params)
    @link = params[:link]
    @text = params[:text]
  end
end

