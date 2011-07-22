class CreateExperiences < ActiveRecord::Migration
  def self.up
    create_table :experiences do |t|
      t.string :role
      t.string :company
      t.string :location
      t.string :dates
      t.text :details

      t.timestamps
    end
  end

  def self.down
    drop_table :experiences
  end
end
