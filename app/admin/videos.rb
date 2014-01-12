ActiveAdmin.register Video do

  index do
    selectable_column
    column :title
    column :description
    column :source
    column :active
    default_actions
  end

  filter :title
  filter :description
  filter :source
  filter :active

end
