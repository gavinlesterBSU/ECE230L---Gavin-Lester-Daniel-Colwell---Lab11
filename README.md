# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Daniel Colwell, Gavin Lester
## Summary
We started the lab as usual, with listening to the lecture, and reading through
the guide. It was nice that it was similar to our homework, and that we could
use our D flip flops, T flip flops, and full adders from previous labs. According to the variables given in the guide, we added them to top and started stringing together the dff and full adder to create a modulo counter, in a file named "modCount". The diagram provided in the guide proved quite useful during this part.
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The modulo counter only gives a pulse every "N" cycles, and a flip flip needs TWO
toggles in order to complete one full cycle. Therefore, each time the modulo
counter gives a pulse, it divides by two.
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The ring counter's output starts as all 1's because in cases where its values
are not initialized, and are "X", they behave as 1's and therefore get outputted
as 1's as well.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Assuming our clock frequency is 100MHz, the ring counter width should be N = flclck / fout , or 100,000,000 / 1,000 , which is N = 100,000. So, we would
need a width of 100,000-bits. Obviously, this is impractical, but the math
is correct.
