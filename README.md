# sigilizeR
Or "How I learned to take a language designed for stats analysis and turn it into a tool for doing magick"


This is my first attempt doing any kind of R/Shiny for use other than just my own screwing around with things, so any code suggestions, improvements, etc are very welcome as are ideas for other sigilization methods.

## Ideas to build up complexity

1. Basic text sigilizer
    - Add tokenizing of output
    - Add output variant as sentence made from available uniques.
2. Text -> Bind patterns  // How to combine?  Trace vectorlines and join?
3. Adjusting text layouts
    - fixed paths (e.g. circles, penta/hexagrams) // expand to fit, or repeat, scale&rep?
    - user defined path // secondary input effectively?
4. Vocalizaion suited outputs // adding vowels back in, vowel led options
5. Add different input options
    - sentence/text strings
    - different languages
    - runes etc.
    - pictures/images as intent input
    - pictures/images as path output
6. Add conversion methods
7. Experiment with audio input/output - looped
8. Shiny web interface for public access
9. Increase Entropy
    - Add randomizer into how many of each character are kept
    - Add random token number
    - Add random token length
    - use sample(1:10,size = 1)
    - use random seed

### Proposed function layout

```R
sigilize(input_form, output_form, convert = FALSE, output_opts = ...)
```
