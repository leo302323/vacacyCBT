class Modifyvacations < ActiveRecord::Migration
 def up
    change_table :vacations do |t|
      t.remove :modified_at
      t.rename :user_id, :employee_id
      t.integer :days
      t.date :requested_on
    end
end
end
