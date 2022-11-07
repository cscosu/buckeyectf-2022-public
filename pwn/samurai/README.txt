# pwn / shogun
First in the stack overflow series.
fgets() reads more bytes into the response buffer than it should, so you can smash the stack and overwrite the value of the outcome variable.
One small sneaky trick was the inlined call to strcpy(), which you can work around by incorporating null bytes into your payload.

