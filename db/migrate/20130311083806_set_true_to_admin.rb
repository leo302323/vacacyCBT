class SetTrueToAdmin < ActiveRecord::Migration
  def change
    User.update_all ["admin=?",true]
  end
  

  
end
