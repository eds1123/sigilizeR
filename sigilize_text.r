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

library(stringr)  # To process text
library(runes)  # For conversion to Nordic runes when specified.

# TODO Validate Input using regex
  # [^@ \t\r\n]+@[^@ \t\r\n]+\.[^@ \t\r\n]+ is the regex for emails
  # ^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$ for phones
  # https://statisticsglobe.com/r-test-if-character-is-in-string#example-2-check-if-string-contains-character-using-str-detect-function-of-stringr-package for general strings (basically grepl() or str_detect() )
  # regex [0-9] for numbers

# Base function
sigilize_text <- function(input_string, convert = NULL) {

  # first validate input
  if (is.character(input_string)) {
    # remove vowels and convert to vector
    split_text <- input_string %>%
      str_remove_all("[aeiou]") %>%
      strsplit("")
    # only keep unique letters and remove spaces
    sigil_text <- unique(split_text[[1]]) %>%
      str_extract("[A-z]") %>%
      .[!is.na(.)] %>%
      # randomize order of characters
      sample() %>%
      # concatenate as uppercase
      str_to_upper()
    # parse convert argument
    if (is.null(convert)) {
      # normal text output
      sigil_output <- paste(sigil_text, collapse = '')
    } else if (convert == "runes") {
      # runic text output
      sigil_output <- runes(sigil_text)
    }
    return(sigil_output)
  }

}


# else if (convert == "numbers") {
#   sigil_output <- sigil_text
# }
#     # if option is specified, convert output before printing
#     if (convert = "numbers") {
#       return(sigil_output)
#     } else if (convert = "runes") {
#       sigil_output <- runes(sigil_text)
#       return(sigil_output)
#     } else {
#       sigil_output <- sigil_text
#       return(sigil_output)
#     }
# 
#   # if input is not string, throw error message
#   } else {
#     return("Input must be a text string")
#   }
# 
# }

# test_string = "some text to test"
# split_text <- test_string %>%
#   str_remove_all("[aeiou]") %>%
#   strsplit("")
# sigil_text <- unique(split_text[[1]]) %>%
#   str_extract("[A-z]") |>
#   # randomize order of characters
#   sample() %>%
#   # concatenate as uppercase
#   str_to_upper() %>%
#   paste(collapse ='')
