puts "What would you like to encrypt?"
  encrypt = gets.chomp.downcase
 puts "By what number should the letters shift?"
number = gets.chomp.to_i

def caesar_cipher(encrypt, number)
  alphabet = ('a'..'z').to_a
    key = Hash[alphabet.zip(alphabet.rotate(number))]
  text.each_char.inject("") { |newtext, char| newtext + key[char] }
end

puts caesar_cipher(encrypt, number)
