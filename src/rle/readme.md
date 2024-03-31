### RLE


The rle algorithm allows you to compress data. Used, for example, in archivers.

Example:

AABCCC => A2BC3


#### How it works:
We have a packing function that takes as parameters a symbol and the number of times it was encountered in a row. It returns a string with that character and number. The number is present in the answer only when the symbol appears more than 1 time.


The main work happens in a for loop. We start the passage from the second element of the array. We check that if the current character is not the same as the previous one, then we send the previous character to the packing function, as well as the current index minus the value of the variable that stores the last index from the last call to the packing function. The returned value from the packing function is appended to the result string.


Since in a loop we always append the previous characters and a number to the result line, then after the loop we need to append the last character (the last index of the array) and calculate how many times in a row it appeared in the array - for this we subtract the value of the variable that stores from the length of the array last index from the packing function call