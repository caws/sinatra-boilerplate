class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  private

  def halt_422(errors:, message: )
    halt 422, json(
      {
        message: message,
        errors: errors,
        success: false
      }
    )
  end
end