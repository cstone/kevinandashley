ActiveAdmin.register Event do

  index do
    selectable_column
    column :title
    column :description
    column :venue
    column :address
    column :city
    column :state
    column :zip
    column :url
    column :start
    column :tag_list
    default_actions
  end

end
