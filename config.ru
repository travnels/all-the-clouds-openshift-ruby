require 'rack/lobster'

map '/health' do
  health = proc do |env|
    [200, { "Content-Type" => "text/html" }, ["1"]]
  end
  run health
end

map '/' do
  response = proc do |env|
    [200, { "Content-Type" => "application/json" }, ['{ "test":123 }']]
  end
  run response
end
