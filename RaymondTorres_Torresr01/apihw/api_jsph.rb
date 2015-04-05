require 'json'
require 'rest-client'
census = RestClient.get('http://api.census.gov/data/2013/acs1/variables.json')
c2013 = JSON.load census

def build_story(label, concept)
	"Label: " + label + "\nConcept: " + concept
end

c2013['variables'].each do |story|
	label = story["label"].
	concept = story["concept"]
	puts build_story(labels, concepts)
end
