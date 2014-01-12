ActiveAdmin.register Show do
  index do
    selectable_column
    column :topic
    column :description
    column :url
    column :guest
    column :guest_image
    column :start
    default_actions
  end

end
