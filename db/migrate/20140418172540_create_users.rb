class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :prename
      t.string :surname
      t.string :email
      t.string :password
      t.string :salt
      t.datetime :created_at

      t.timestamps
    end
  end
end
