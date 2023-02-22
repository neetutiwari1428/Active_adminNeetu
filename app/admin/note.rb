ActiveAdmin.register Note do
    permit_params :Title, :body

  index do
    selectable_column
    id_column
    column :Title
    column :body
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :Title
  filter :body
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :Title
      f.input :body
    end
    f.actions
  end
end