ActiveAdmin.register DynamicContent do
  menu :label => "Content"

  index do
    selectable_column
    column :key
    column :value
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :key
      f.input :value, :as => :ckeditor
    end
    f.buttons
  end

end
