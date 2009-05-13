class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :handle_name
      t.string :email
      t.references :present
      t.string :comment
      t.datetime :entered_at

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
