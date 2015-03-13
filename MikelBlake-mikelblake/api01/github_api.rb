require 'json'
require 'rest-client'
github_json = RestClient.get('https://api.github.com/users/rails/repos')
ghub_json = JSON.load(github_json)

ghub_json.each do |repo|
  puts 'This repo was created at ' + repo['created_at'] + 'and has ' + repo['forks_count'].to_s + ' forks.'
end
