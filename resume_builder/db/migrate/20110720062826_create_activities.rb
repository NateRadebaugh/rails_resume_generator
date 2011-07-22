class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :club_name
      t.string :position
      t.string :dates

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
