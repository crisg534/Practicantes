class AddSkillsAndWantedSkillsToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :skills, :string
    add_column :offers, :wanted_skills, :string
  end
end
