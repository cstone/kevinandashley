# RailsAdmin config file. Generated on December 19, 2013 22:49
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  # If your default_local is different from :en, uncomment the following 2 lines and set your default locale here:
  # require 'i18n'
  # I18n.default_locale = :de

  #config.current_user_method { current_user } # auto-generated

  config.authenticate_with do
    warden.authenticate! :scope => :admin
  end
  config.current_user_method { current_admin } # hook to your 'current_user' method

  # If you want to track changes on your models:
  # config.audit_with :history, User

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, User

  # Set the admin name here (optional second array element will appear in a beautiful RailsAdmin red ©)
  config.main_app_name = ['Kevinandashley', 'Admin']
  # or for a dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }


  #  ==> Global show view settings
  # Display empty fields in show views
  # config.compact_show_view = false

  #  ==> Global list view settings
  # Number of default rows per-page:
  # config.default_items_per_page = 20

  #  ==> Included models
  # Add all excluded models here:
  # config.excluded_models = [Article, Event, Page, Show, User, Video]

  # Add models here if you want to go 'whitelist mode':
  # config.included_models = [Article, Event, Page, Show, User, Video]

  # Application wide tried label methods for models' instances
  # config.label_methods << :description # Default is [:name, :title]

  #  ==> Global models configuration
  # config.models do
  #   # Configuration here will affect all included models in all scopes, handle with care!
  #
  #   list do
  #     # Configuration here will affect all included models in list sections (same for show, export, edit, update, create)
  #
  #     fields_of_type :date do
  #       # Configuration here will affect all date fields, in the list section, for all included models. See README for a comprehensive type list.
  #     end
  #   end
  # end
  #
  #  ==> Model specific configuration
  # Keep in mind that *all* configuration blocks are optional.
  # RailsAdmin will try his best to provide the best defaults for each section, for each field.
  # Try to override as few things as possible, in the most generic way. Try to avoid setting labels for models and attributes, use ActiveRecord I18n API instead.
  # Less code is better code!
  # config.model MyModel do
  #   # Cross-section field configuration
  #   object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #   label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #   label_plural 'My models'      # Same, plural
  #   weight -1                     # Navigation priority. Bigger is higher.
  #   parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #   navigation_label              # Sets dropdown entry's name in navigation. Only for parents!
  #   # Section specific configuration:
  #   list do
  #     filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #     items_per_page 100    # Override default_items_per_page
  #     sort_by :id           # Sort column (default is primary key)
  #     sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     # Here goes the fields configuration for the list view
  #   end
  # end

  # Your model's configuration, to help you get started:

  # All fields marked as 'hidden' won't be shown anywhere in the rails_admin unless you mark them as visible. (visible(true))

  # config.model Article do
  #   # Found associations:
  #     configure :taggings, :has_many_association         # Hidden 
  #     configure :base_tags, :has_many_association         # Hidden 
  #     configure :tag_taggings, :has_many_association         # Hidden 
  #     configure :tags, :has_many_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :body, :text 
  #     configure :published_at, :datetime 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Event do
  #   # Found associations:
  #     configure :taggings, :has_many_association         # Hidden 
  #     configure :base_tags, :has_many_association         # Hidden 
  #     configure :tag_taggings, :has_many_association         # Hidden 
  #     configure :tags, :has_many_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :description, :text 
  #     configure :date, :date 
  #     configure :time, :time 
  #     configure :venue, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :address, :string 
  #     configure :city, :string 
  #     configure :state, :string 
  #     configure :zip, :integer 
  #     configure :url, :string   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Page do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :permalink, :string 
  #     configure :body, :text 
  #     configure :active, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Show do
  #   # Found associations:
  #     configure :taggings, :has_many_association         # Hidden 
  #     configure :base_tags, :has_many_association         # Hidden 
  #     configure :tag_taggings, :has_many_association         # Hidden 
  #     configure :tags, :has_many_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :topic, :string 
  #     configure :date, :date 
  #     configure :time, :time 
  #     configure :description, :text 
  #     configure :url, :string 
  #     configure :guest, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model User do
  #   # Found associations:
  #   # Found columns:
  #     configure :id, :integer 
  #     configure :email, :string 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :string         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :string 
  #     configure :last_sign_in_ip, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :is_admin, :boolean   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
  # config.model Video do
  #   # Found associations:
  #     configure :taggings, :has_many_association         # Hidden 
  #     configure :base_tags, :has_many_association         # Hidden 
  #     configure :tag_taggings, :has_many_association         # Hidden 
  #     configure :tags, :has_many_association         # Hidden   #   # Found columns:
  #     configure :id, :integer 
  #     configure :title, :string 
  #     configure :description, :text 
  #     configure :source, :string 
  #     configure :active, :boolean 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime   #   # Sections:
  #   list do; end
  #   export do; end
  #   show do; end
  #   edit do; end
  #   create do; end
  #   update do; end
  # end
end
