require 'HTTParty'

word = 'initalize'

response = HTTParty.get("https://api.datamuse.com/words?sp=#{word}")
if response.code == 200
  results = JSON.parse(response.body)
  puts "The spelling search result for '#{word}' are:"
  results.each do |result|
    puts '- ' + result["word"]
  end
end
