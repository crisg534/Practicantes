class SearchesController < ApplicationController
  respond_to :js, only: [:create]

  def show
  end

  def create
    render 'show'
  end
end
