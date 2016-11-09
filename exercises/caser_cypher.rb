def ccencrypt(text, shiftnumber)
  texttocypher = text.split("")
  alphabeth = ("a".."z").to_a
  new_array = []
  alphabeth.each_with_index do |letter, index|
    new_array << alphabeth[(index+shiftnumber)]
  end
  p new_array
  p texttocypher
end


text = ccencrypt("I love George!", 2)
p text
