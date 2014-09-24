# This file is used by Rack-based servers to start the application.
require 'rack/cors'
require ::File.expand_path('../config/environment',  __FILE__)

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :options, :put, :delete]
  end
end
run Rails.application
