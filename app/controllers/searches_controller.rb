class SearchesController < ApplicationController
  respond_to :js, only: [:create]

  def show
  end

  def create
    @offers = Offer.search(params)
    render "show"
  end
end
