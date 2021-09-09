# Sus // An esoteric programming language

---

## How to use it

[Download and unpack the compiler](https://github.com/iG-Studios/sus/releases) to get started!
Modify the "input.txt" file with your *sus* programming input, and run sus.exe to compile it and view the output.

---

## What is it?
"Sus" is an [esoteric programming language](https://esolangs.org/wiki/Esoteric_programming_language) that is [turing complete](https://en.wikipedia.org/wiki/Turing_completeness); think of it as an alternative [BrainFuck](https://esolangs.org/wiki/Brainfuck). This was something I purely made in free time originally on the Roblox platform, but I decided to port it to the love2d framework in another set of free time for non-robloxians.

Like BF, this is based on an array and pointer. The pointer moves across an array and may increment/decrement values, and output that value as an ASCII character.

Sus is written with five symbols, which are documented below:
* ">" = Move pointer one spot forward in the array
* "<" = Move pointer one spot backward in the array
* "+" = Add to current pointer value
* "-" = Subtract to current pointer value
* "|" = Convert current pointer value to ASCII and add to output string
* "$" = If current pointer value is 0, skip *past* the next "!"
* "!" = Go back to the previous "$"

Any and all other characters are ignored when the program is compiled. Get creative with your code!

At the end of the code read, the interpreter prints the final output.

**THE POINTER VALUE IS 97 BY DEFAULT!** In a sense, this means each value in the pointer array will equal "a" as an ASCII value.

---

## Why should I use it?
You shouldn't use it. It's useless.

Sus is an [esoteric programming langauge](https://esolangs.org/wiki/Esoteric_programming_language). Esoteric programming languages are not intended for practical use in a program, but rather something for fun.

I recommend trying this out, though, if you would like to challenge your mind a bit, or impress a friend.

---

## Examples

Here is an example printing "Hello world!":
```
-------------------------|>++++|>+++++++++++||>++++++++++++++|>-----------------------------------------------------------------|>++++++++++++++++++++++|<<|>>>+++++++++++++++++|<<<<|>>>>>+++|>----------------------------------------------------------------|
```


 ### Here is it broken down:
 
* `-------------------------|` Go back to the ASCII value for "H," and add to output
* `>++++|` Go forward a cell, go to the ASCII value for "e," and add to output
* `>+++++++++++|` Go forward a cell, go to the ASCII value for "l," and add to output
* `|` The current pointer already equals "l," so just re-add it to the output
* `>++++++++++++++|` Go forward a cell, go to the ASCII value for "o," and add to output
* `>-----------------------------------------------------------------|` Go forward a cell, go to the ASCII value for space, and add to output
* `>++++++++++++++++++++++|` Go forward a cell, go to the ASCII value for "w," and add to output
* `<<|` A couple cells ago, we already defined the letter "o," so go back to it and print it
* `>>>+++++++++++++++++|` Go forward three cells, go to the ASCII value for "r," and add to output
* `<<<<|` We already defined a value for "l," so go back to that cell and print that value
* `>>>>>+++|` Go forward five cells, go to the ASCII value for "d," and add to output
* `>----------------------------------------------------------------|` Go forward a cell, go to the ASCII value for "!," and add to output

Also, per request of some acquaintances, here is an example that prints "chevvy":
```
++|>+++++++|>++++|>+++++++++++++++++++++||>++++++++++++++++++++++++|
```

One final example, prints "sus":
```
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣴⣆⣠⣤⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣻⣿++⠹⣧⣤⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠛⠿⢿⣿⣷⣾⣯⠉⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿+⣿⡍⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⠀⠘⣿⣆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⡟⠃⡄⠀⠘⢿⣆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾+⣁⣋⣈ +++⣧⡀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠++++++++++⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠉⠙⠛⠛⠛⠛⠻⢿⣿⣷⣤⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠋⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠈⢻+|⣿⡄⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣸⣿⡏⠀⠀⠀⣠+⣾⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⣄⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠁⠀⠀⢰⣿⣿⣯⠁⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣷⡄⠀
⠀⠀⣀+|⣴⣶⣶⣿⡟⠀⠀⠀⢸⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⠀
⠀⢰⣿⡟⠋⠉⣹⣿⡇⠀⠀⠀⠘⣿⣿⣿⣿⣷⣦⣤⣤⣤⣶⣶⣶⣶⣿⣿⣿⠀
⠀⢸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀
⠀⣸⣿⡇⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠉⠻⠿⣿⣿⣿⣿⡿⠿⠿⠛⢻⣿⡇⠀⠀
⠀⣿⣿⠁⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⠀⠀
⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀
⠀⣿⣿⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀
⠀⢿⣿⡆⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡇⠀⠀
⠀⠸⣿⣧⡀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠃⠀⠀
⠀⠀⠛--⣿⣿⣇⠀⠀⠀⠀⠀⣰⣿⣿⣷⣶⣶⣶⣶⠶⠀⢠⣿⣿⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⣽⣿⡏⠁⠀⠀⢸⣿⡇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⣿⡇⠀⢹⣿⡆⠀⠀⠀⣸⣿⠇⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢿|⣦⣄⣀⣠⣴⣿⣿⠁⠀⠈⠻⣿⣿⣿⣿⡿⠏⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⠿⠿⠿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
```
