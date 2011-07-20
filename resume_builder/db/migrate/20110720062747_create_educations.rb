class CreateEducations < ActiveRecord::Migration
  def self.up
    create_table :educations do |t|
      t.string :degree_type
      t.string :degree_subject
      t.string :school
      t.string :school_location
      t.string :graduation_date

      t.timestamps
    end
  end

  def self.down
    drop_table :educations
  end
end
