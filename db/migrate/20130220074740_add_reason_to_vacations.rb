class AddReasonToVacations < ActiveRecord::Migration
  def change
    add_column :vacations, :reason, :string
  end
end
