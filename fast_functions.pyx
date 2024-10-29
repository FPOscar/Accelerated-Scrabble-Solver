# fast_functions.pyx

from collections import Counter
cimport cython

@cython.boundscheck(False)
@cython.wraparound(False)
def is_word_formable(word_counter, letters_counter):
    return not (word_counter - letters_counter)

@cython.boundscheck(False)
@cython.wraparound(False)
def get_word_score(word, SCRABBLE_SCORES):
    cdef int total = 0
    for letter in word:
        total += SCRABBLE_SCORES.get(letter, 0)
    return total
