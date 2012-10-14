class SkillsController < ApplicationController
  respond_to :json, only: [:show]

  def index
    @skills = Offer.search_skills(params[:skill])
    respond_with @skills.to_json
  end
end
