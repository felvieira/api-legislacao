class PagesController < ApplicationController
  def home
    render json: { message: 'hello world' }
  end
end
