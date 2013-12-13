ActiveAdmin.register User do
   index do                            
    column :email                     
    column :name 
    column :totaldays  
    column :manager
    column :admin          
    default_actions                   
  end                     
  
  show do |ad|
      attributes_table do
        row :email
        row :name
        row :totaldays
        row :manager
        row :admin
      end
      active_admin_comments
    end          

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation 
      f.input :name 
      f.input :manager
      f.input :totaldays
      f.input :admin
      
    end                               
    f.actions                         
  end 
end
