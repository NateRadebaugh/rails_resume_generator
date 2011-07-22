class CreateComputerSkills < ActiveRecord::Migration
  def self.up
    create_table :computer_skills do |t|
      t.string :skill

      t.timestamps
    end
  end

  def self.down
    drop_table :computer_skills
  end
end
