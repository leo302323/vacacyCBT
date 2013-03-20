class AddTotaldaysToUsers < ActiveRecord::Migration
  def up
    add_column :users, :totaldays, :integer,:default=>15
    User.update_all ["totaldays=?",15]
  end
end
