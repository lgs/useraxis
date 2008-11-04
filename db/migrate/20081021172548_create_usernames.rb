class CreateUsernames < ActiveRecord::Migration
  def self.up
    create_table :usernames, :force => true do |t|
      t.integer :account_id, :null => false
      t.integer :service_id, :null => false
      t.string :login_name, :null => false
      t.timestamps
    end
    #login_name is not unique, you can have same login_name for different services
    #add_index :usernames, :login_name, :unique => true
  end

  def self.down
    drop_table :usernames
  end
end

