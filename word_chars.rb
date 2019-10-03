# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  #     make chars into a hash
      char_hash = {}
      chars.split('').each {|c| char_hash[c] = chars.count(c)}
      puts "char hash: #{char_hash}"
      
  #     iterate through the words and see if the letters in the word are in the char_hash
      result = 0
      
      words.each do |word|
          puts '--------------------'
          puts 'reinitialize h to char_hash'
          h = char_hash.clone
          puts "h: #{h}"
          flag = true
          puts "starting a new word: #{word}, flag: #{flag}"
          word.split('').each do |letter|
              
              if h[letter] != nil && h[letter] >= 1
                  h[letter] -= 1
              else
                  flag = false
                  puts "letter #{letter} not found! setting flag to false"
              end
              
          end
          
          if flag
            puts "#{flag} flag!!! add #{word} to the results count"
              result += word.length
              puts "Result:  #{result}"
          end
      
      end
      puts "final tally #{result}"
      result
  end

  words = ["cat","bt","hat","tree"]
  chars = "atach"

  count_characters(words, chars)