require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rblog
  class Application < Rails::Application
    def uploadFile(file)
	       if !file.original_filename.empty 
		          @filename=getFileName(file.original_filename)
			     File.open("#{RAILS_ROOT}/public/images/#{@filename}", "wb") do |f|
				          f.write(file.read)
					     end
	          return @filename
    end
  end
  def getFileName(filename)
	  if !filename.nil 
		  return filename
	  end
  end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
     config.time_zone = 'Taipei'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
#config.i18n.load_path += Dir[Rails.root.join('config','locales','models','*','*.yml').to_s]
#config.i18n.load_path += Dir[Rails.root.join('config','locales','models','*','*.yml').to_s]
#     config.i18n.default_locale =:en
     config.i18n.default_locale ="zh-CN"
       
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
  end
end
