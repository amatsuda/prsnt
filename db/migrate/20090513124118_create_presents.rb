class CreatePresents < ActiveRecord::Migration
  def self.up
    create_table :presents do |t|
      t.string :name
      t.references :event
      t.references :sponsor

      t.timestamps
    end
  end

  def self.down
    drop_table :presents
  end
end
