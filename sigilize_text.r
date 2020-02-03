# Basic text string sigil generator

# --------------------------------------------- #
#
# Takes a text string input
# TODO Check to validate input is string
# Removes vowels and reduces to unique letters only
# Scrambles into random order
# Capitalizes and returns as a single concatenated string.
#
# TODO validate input is text string first
# TODO Currently function drops any numbers in string
# TODO add option to return final output in n number of tokens.
#
# --------------------------------------------- #

library(magrittr)  # Function uses pipe
library(stringr)  # To process text
#library (???)  # For validating input

# Base function
sigilize_text <- function(input_string) {
  split_text <- input_string %>%
    str_remove_all("[aeiou]") %>%
    strsplit(.,"")
  sigil_text <- unique(split_text[[1]]) %>%
    str_extract("[A-z]") %>%
    sample() %>%
    str_to_upper() %>%
    paste(collapse ='')
  return(sigil_text)
}
