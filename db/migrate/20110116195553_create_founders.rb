class CreateFounders < ActiveRecord::Migration
  def self.up
    create_table :founders do |t|
      t.string :username
      t.string :email
      t.string :about
      t.string :looking_for

      t.timestamps
    end
  end

  def self.down
    drop_table :founders
  end
end
