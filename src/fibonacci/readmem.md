### Fibonachi


#### How it works:

Each subsequent number in the Fibonaci sequence is the sum of the previous two numbers. The sequence starts from 0.

The algorithm works as follows: if a number is requested at index 0 or 1, then we return the same number.

Next comes a loop that starts with 2 and in the loop operates on two variables - the previous number and the current one. By swapping variables, we put the current one in the previous one, and write down the previous + current one in the current one.