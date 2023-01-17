require_relative 'braille_translator'

braille_file = File.open(ARGV[0], 'r')
input = braille_file.read.chomp
braille_file.close

translator = BrailleTranslator.new(input)
text = translator.convert_to_array(input)
translated_text = translator.translate_to_english(text)
english_text = translator.line_break(translated_text)
translation_to_english = File.open(ARGV[1], 'w')
translation_to_english.write(english_text)

puts "Created #{ARGV[1]} containing #{text.length} characters"