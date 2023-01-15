require_relative 'translator'

english_file = File.open(ARGV[0], 'r')
input = english_file.read.chomp
english_file.close

translator = Translator.new(input)
text = translator.line_break(input)
braille_text = translator.braille_array_to_string(text)
translation_to_braille = File.open(ARGV[1], 'w')
translation_to_braille.write(braille_text)

puts "Created #{ARGV[1]} containing #{text.length} characters"