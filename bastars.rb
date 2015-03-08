1. Exercise: Reverse an array using a loop and push and pop

2. Exercise: Reverse an array without a temporary array

3. Sort an array in descending order

4. Exercise: Sort names by last name
["John Smith", "Dan Boone", "Jennifer Jane", "Charles Lindy", "Jennifer Eight", "Rob Roy"]

5. Write a loop to convert arr_pets into the equivalent hash:
arr_pets = [["dog", "Fido"], ["cat", "Whiskers"], ["pig", "Wilbur"]]         

6. Make this:
rows = [["Name", "State", "Candidate", "Amount"],
["John Doe", "IA", "Rep. Smithers", "$300"],
["Mary Smith", "CA", "Sen. Nando", "$1,000"],
["Sue Johnson", "TX", "Rep. Nguyen", "$200"]]   

output this: #=> Candidate Sen. Nando received $1,000 from a donor named Mary Smith from the state of CA using a one-line puts statement

Then make it into an array of hashes to look like this:
rows = [
{"Name"=>"John Doe", "State"=>"IA", "Candidate"=>"Rep. Smithers", "Amount"=>"$300"},
{"Name"=>"Mary Smith", "State"=>"CA", "Candidate"=>"Sen. Nando", "Amount"=>"$1,000"},
{"Name"=>"Sue Johnson", "State"=>"TX", "Candidate"=>"Rep. Nguyen", "Amount"=>"$200"}]

