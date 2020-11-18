Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://busy-comb.surge.sh/'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
  end
end
