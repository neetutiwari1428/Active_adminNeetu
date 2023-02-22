ActiveAdmin.register AdminUser do
    permit_params :author_name, :comment
  
    index do
      selectable_column
      id_column
      column :author_name
      column :comment
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end
  
    filter :author_name
    filter :comment
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :author_name
        f.input :comment
      end
      f.actions
    end
  
end
  
