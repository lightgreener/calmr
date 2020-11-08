Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*',
      :headers => :any,
      :methods => %i(get post put patch delete options head)
      # %i is array of symbols
      # credentials :true
  end
end
