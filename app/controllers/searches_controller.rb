class SearchesController < ApplicationController
  respond_to :js, only: [:create]

  def show
  end

  def create
    respond_with Offer.search(params)
  end
end
