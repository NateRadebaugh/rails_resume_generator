class CreateRelatedCourses < ActiveRecord::Migration
  def self.up
    create_table :related_courses do |t|
      t.string :course

      t.timestamps
    end
  end

  def self.down
    drop_table :related_courses
  end
end
