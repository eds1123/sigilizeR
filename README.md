# sigilizeR
Or "How I learned to take a language designed for stats analysis and turn it into a tool for doing magick"


This is my first attempt doing any kind of R/Shiny for use other than just my own screwing around with things, so any suggestions, improvements, better ways of coding

## Ideas to build up complexity

1. Basic text sigilizer
  a. Add tokenizing of input
  b. Add readable version with vowels left/added in
2. Text -> Bind patterns  // How to combine?  Trace vectorlines and join?
3. Adjusting text layouts
  a. fixed paths (e.g. circles, penta/hexagrams) // expand to fit, or repeat, scale&rep?
  b. user defined path // secondary input effectively?
4. Vocalizaion suited outputs // adding vowels back in, vowel led options
5. Add different input options
  a. sentence/text strings
  b. different languages
  c. runes etc.
  d. pictures/images
6. Add conversion methods
7. Experiment with audio input/output - looped
8. Shiny web interface for public access
9. Increase Entropy
  a. Add randomizer into how many of each character are kept
  b. Add random token number
  c. Add random token length
  d. use sample(1:10,size = 1)

### Proposed function layout

```R
sigilize(input_form, output_form, convert = FALSE, output_opts = ...)
```