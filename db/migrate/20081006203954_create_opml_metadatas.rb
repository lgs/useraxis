class CreateOpmlMetadatas < ActiveRecord::Migration
  def self.up
    create_table :opml_metadatas do |t|
      t.integer :account_id, :null => false 
      t.integer :size, :db_file_id
      t.string :content_type
      t.string :filename
      t.timestamps
    end
  end

  def self.down
    drop_table :opml_metadatas
  end
end
