class CreateOpmlMetadatas < ActiveRecord::Migration
  def self.up
    create_table :opml_metadatas do |t|
      t.integer :size
      t.string :content_type
      t.string :filename
      t.integer :db_file_id

      t.timestamps
    end
  end

  def self.down
    drop_table :opml_metadatas
  end
end
