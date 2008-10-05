class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
#      t.integer :account_id, :null => false
      t.string :username, :service, :null => false

      t.timestamps
    end
#    add_index :services, [:account_id, :service], :unique => true

#    Services.create([ { :name => 'Afghanistan', :code => 'AF' },
#                      { :service => 'http://delicious.com/', :username => 'nil' },
#                      { :service => 'http://friendfeed.com/', :username => 'nil' },
#                      { :service => 'http://www.linkedin.com/in/', :username => 'nil' }
#    ])
  end

  def self.down
    drop_table :services
  end
end

