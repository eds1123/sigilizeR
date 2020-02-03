# Basic text string sigil generator

# --------------------------------------------- #
#
# Takes a text string input
# Validates input
# Removes vowels and reduces to unique letters only
# Scrambles into random order
# Capitalizes and returns as a single concatenated string.
#
# TODO Currently function drops any numbers in string
# TODO add option to return final output in n number of tokens.
#
# --------------------------------------------- #

library(magrittr)  # Function uses pipe
library(stringr)  # To process text
#library (???)  # For validating input

# Base function
sigilize_text <- function(input_string) {
  if (is.character(input_string)) {
    split_text <- input_string %>%
      str_remove_all("[aeiou]") %>%
      strsplit(.,"")
    sigil_text <- unique(split_text[[1]]) %>%
      str_extract("[A-z]") %>%
      sample() %>%
      str_to_upper() %>%
      paste(collapse ='')
    return(sigil_text)
  } else {
    return("Input must be a text string")
  }
}
