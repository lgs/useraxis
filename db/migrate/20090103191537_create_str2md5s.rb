class CreateStr2md5s < ActiveRecord::Migration
  def self.up
    create_table :str2md5s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :str2md5s
  end
end
