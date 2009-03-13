class CreateSubRecords < ActiveRecord::Migration
  def self.up
    create_table :sub_records do |t|
      t.string :name
      t.integer :record_id
      t.timestamps
    end
  end

  def self.down
    drop_table :sub_records
  end
end
