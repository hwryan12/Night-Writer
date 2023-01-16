# Night Writer

## Turing School of Software & Design Module 1 Final project

### Learning Goals for Night Writer
* Practice breaking a program into logical components
* Testing components in isolation and in combination
* Applying Enumerable techniques in a real contex
* Reading text from and writing text to files

### Contents
1. Setup
1. Design Strategy
1. Application
1. Future Goals
1. Reflections
1. Contributer(s)

### Setup 

"Night Writing" was first invented as a way to read and write messages at night for Napoleon Bonaparte's army as France marched across Europe in the early 19th century. The aim of this project is to simulate that process by creating a program that will translate a message in English into Braille and then back into English. Click on the links here for more information on the history of ["Night Writing"](https://en.wikipedia.org/wiki/Night_writing) and [Braille tactile writing system](https://en.wikipedia.org/wiki/Braille).
#

### Design Strategy
This project was made in accordance with Test-Driven Developement with RSpec. It impliments two seperate runner files: `night_writer.rb` and `night_reader.rb`. The Braille characters are printed in a 2x3 grid like so: __(#insert example picture here)__ and may only print up to 40 Braille characters(80 English characters) per line of text.
#

### Application
To run this program please clone this repository down to your local machine. Once you have cloned down and are ready to translate into Braille, simply type the message you wish to be translated into the file
`message.txt` and then type the following command into your command-line terminal: 
> `ruby ./lib/night_writer.rb message.txt braille.txt` 
>
__(#insert example picture here)__

Now to translate your Braille message back into English, type the following command back into your command-line terminal:
> `ruby ./lib/night_reader.rb braille.txt original_message.txt`
>
__(#insert example picture here)__
#

### Future Goals
 Project status: _In Progress_
 
 Additional features that could be added to this program include:
 * Refactoring so that each of the existing programs use a shared File I/O class
 * Supporting Braille capitalization
 * Supporting Braille numerics
 * Supporting Braille word contractions

 ### Reflections
__(#Return here once finished)__

#
### Contributer(s)
This project was created solely by Harrison Ryan
#
email: <hwryan12@gmail.com>; github: [https://github.com/hwryan12](https://github.com/hwryan12)