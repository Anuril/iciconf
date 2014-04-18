class CreateHostgroups < ActiveRecord::Migration
  def change
    create_table :hostgroups do |t|
      t.string :hostgroup_name
      t.string :alias
      t.string :members
      t.string :hostgroup_members
      t.text :note

      t.timestamps
    end
  end
end
