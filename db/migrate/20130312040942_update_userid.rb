class UpdateUserid < ActiveRecord::Migration
  def change
    Vacation.update_all ["user_id=?",1]
  end

  
end
