class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.integer :user_id
      t.date :starting_at
      t.date :ending_at
      t.string :status
      t.datetime :created_at
      t.datetime :modified_at

      t.timestamps
    end
  end
end
