puts "What would you like to encrypt?"
  encrypt = gets.chomp.downcase #ask for string to encrypt
 puts "By what number should the letters shift?"
number = gets.chomp.to_i #convert string number to integer

def caesar_cipher(encrypt, number) #two arguments
  alphabet = ('a'..'z').to_a #var with letters "a" to "z" converted in an array
    key = Hash[alphabet.zip(alphabet.rotate(number))]
=begin
array "alphabet" is equal to every alphabetical letter, which is combined
with the .rotated alphabet using the "zip" method. The "rotate" method
takes single argument which is fed from the user's input.
The Hash turns each pairing into key.
=end
  text.each_char.inject("") { |newtext, char| newtext + key[char] }
end
# each_char separates the string into characters, while inject sends each
#character through the block. 

puts caesar_cipher(encrypt, number)
