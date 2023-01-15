require_relative 'translator'

english_file = File.open(ARGV[0], 'r')
text = english_file.read.chomp
english_file.close

translator = Translator.new(text)
braille_text = translator.braille_array_to_string(text ,@array_of_braille)
translation_to_braille = File.open(ARGV[1], 'w')
translation_to_braille.write(braille_text)

puts "Created #{ARGV[1]} containing #{text.length} characters"