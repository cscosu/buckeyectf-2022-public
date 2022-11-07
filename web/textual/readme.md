Textual is a Tex to HTML iframe renderer. There is no restrictions on user inputs, so it is very easy to access the flag via a simple `\include{}` statement, since the flag itself is stored as a .tex file.

*Note: \write18 and other commands used to gain RCE via LaTeX do not work in this challenge, due to jailing.