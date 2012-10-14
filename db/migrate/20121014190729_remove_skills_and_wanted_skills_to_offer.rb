class RemoveSkillsAndWantedSkillsToOffer < ActiveRecord::Migration
  def up
    remove_column :offers, :skills
        remove_column :offers, :wanted_skills
      end

  def down
    add_column :offers, :wanted_skills, :string
    add_column :offers, :skills, :string
  end
end
