class CreateMiscVariables < ActiveRecord::Migration
  def self.up
    create_table :misc_variables do |t|
      t.string :variable_name
      t.string :variable_value

      t.timestamps
    end
  end

  def self.down
    drop_table :misc_variables
  end
end
