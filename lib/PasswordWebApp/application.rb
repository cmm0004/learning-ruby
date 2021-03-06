require 'sinatra'

require 'active_record'
require './config/environments'

require './lib/PasswordWebApp/health_check'
require './lib/PasswordWebApp/models'
require './lib/PasswordWebApp/endpoints'

module PasswordWebApp
 

  class Application < Sinatra::Base
    if ENV['RACK_ENV'].downcase == 'development'
      require 'dotenv'
      Dotenv.load ".env.development"
    end

    configure do
      set :root, File.expand_path('../../..', __FILE__)
    end

  end
end