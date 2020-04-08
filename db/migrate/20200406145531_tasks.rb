class Tasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks,:description,:string
    add_column :tasks,:deadline,:datetime
  end
end
