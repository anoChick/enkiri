# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root                             to: 'home#index'
post '/auth/:provider/callback', to: 'session#create'
get  '/auth/:provider/callback', to: 'session#create'
get '/sync', to: 'user#sync'
post '/tweet', to: 'user#tweet'
