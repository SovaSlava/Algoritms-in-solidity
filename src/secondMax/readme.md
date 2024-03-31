### Second max value in array

The function finds the second largest value in the array.


#### How it works:


First, we find the maximum and minimum number among the first two elements of the array.

Then in a loop (start from third element) we check - is the current number of the recorded maximum? If yes, then the previous maximum number becomes the second maximum, and the current one (from the loop) becomes the first.

We also have a second check (via else if) - is the current number greater than the second maximum? if yes, then simply write down the current number as the second maximum.