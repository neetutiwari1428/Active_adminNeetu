ActiveAdmin.register Author do
    permit_params :name

  index do
    selectable_column
    id_column
    column :name
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :nam
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
  
    end
    f.actions
  end
end