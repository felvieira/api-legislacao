class LawsController < ApplicationController
  def rules
    rules = Legislation.get_rules(params[:text])
    render json: rules
  end

  def get_page
    rules = Legislation.next_page(params[:page])
    render json: rules
  end

  def details
    details = Legislation.get_details(params[:url])
    render json: details
  end
end
