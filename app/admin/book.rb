ActiveAdmin.register Book do
permit_params :title, :pages

  index do
    selectable_column
    id_column
    
    column :title
    column :pages
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end
  index as: :grid, default: true do |article|
     link_to image_tag('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),admin_article_path(article)
  end
  filter :title
  filter :pages
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :pages  
    end
    f.actions
  end
end