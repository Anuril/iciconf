class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname
      t.string :alias
      t.string :display_name
      t.string :address
      t.string :parents
      t.string :hostgroups
      t.string :check_command
      t.string :check_period
      t.integer :notification_interval
      t.string :notification_period

      t.timestamps
    end
  end
end
