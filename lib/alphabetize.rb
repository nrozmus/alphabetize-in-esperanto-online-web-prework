#ESPERANTO_ALPHABET = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"

# map each letter of "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz" to a new arrive so you have the index number to use

def alphabetize(array)
	alpha = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
	alpha_hash = {}
	alpha.split("").each_with_index do |item, idx|
		alpha_hash[item] = idx
	end
	sorted_array = []
	sorted_array = array.sort_by { |word|
		word.chars.map { |c| alpha_hash[c] }
	}
	sorted_array
end