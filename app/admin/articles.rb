ActiveAdmin.register Article do

  index do
    selectable_column
    column :title
    column :body
    column :published_at
    column :tag_list
    default_actions
  end

  filter :title
  filter :body
  filter :published_at
  filter :tag_list

end
