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
1. Contributer(s)

### Setup 

"Night Writing" was first invented as a way to read and write messages at night for Napoleon Bonaparte's army as France marched across Europe in the early 19th century. The aim of this project is to simulate that process by creating a program that will translate a message in English into Braille and then back into English. Click on the links here for more information on the history of ["Night Writing"](https://en.wikipedia.org/wiki/Night_writing) and [Braille tactile writing system](https://en.wikipedia.org/wiki/Braille).
#

### Design Strategy
This project was made in accordance with Test-Driven Developement with RSpec. It implements two seperate runner files: `night_writer.rb` and `night_reader.rb`. The Braille characters are printed in a 2x3 grid like so: __(#insert example picture here)__ and may only print up to 40 Braille characters(80 English characters) per line of text.
#

### Application
To run this program, please clone this repository down to your local machine. Once you have cloned down and are ready to translate into Braille, simply type the message you wish to be translated into `message.txt` and input your desired file name followed by the extension `.txt` for the translated message file
(for this example I used the file names `braille.txt` and `retranslated.txt`) and then type the following command into your command-line terminal: 

__NOTE:__ Remove all `<>` from the following command

`ruby ./lib/night_writer.rb message.txt <user_choice_name_2.txt>` 

![Screenshot 2023-01-17 at 8 50 52 AM](https://user-images.githubusercontent.com/116698937/212933267-f31d8faf-49a3-49a5-966a-0849a1a5135a.png)
![Screenshot 2023-01-17 at 8 51 14 AM](https://user-images.githubusercontent.com/116698937/212933632-a5ff4e55-9fd1-4d95-b623-12c55992c61f.png)


Now to translate your Braille message back into English, type the following command back into your command-line terminal:

`ruby ./lib/night_reader.rb <user_choice_name_2.txt> <user_choice_name_3.txt>`

![Screenshot 2023-01-17 at 8 51 14 AM](https://user-images.githubusercontent.com/116698937/212933632-a5ff4e55-9fd1-4d95-b623-12c55992c61f.png)
![Screenshot 2023-01-17 at 8 52 42 AM](https://user-images.githubusercontent.com/116698937/212933717-46d2d31f-139e-4a6e-86e8-8807bc33f99e.png)
#

### Future Goals
 Project status: _In Progress_
 
 Additional features that could be added to this program include:
 * Refactoring so that each of the existing programs use a shared File I/O class
 * Supporting Braille capitalization
 * Supporting Braille numerics
 * Supporting Braille word contractions
 * Ability to function in languages other than English

#
### Contributer(s)
This project was created solely by Harrison Ryan
#
email: <hwryan12@gmail.com>; github: [https://github.com/hwryan12](https://github.com/hwryan12)