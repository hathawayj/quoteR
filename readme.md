## quoteR R package

This is just a place holder for a quote management package that I would like to build.  Here are the objectives

1. Handle `.bib` files and be able to move to `tibbles`.  Probably will use functions from the `bib2df` package.
2. Look at using the [goodreads.com api](https://www.goodreads.com/api) to manage quotes and reviews.

    a. https://www.goodreads.com/api/index#review.show_by_user_and_book   
    b. https://www.goodreads.com/api/index#review.create   
    c. https://www.goodreads.com/api/index#quotes.create   
    d. https://theysaidso.com/api/   

3. Store quotes and reviews in markdown files that can be referenced.
4. Build a tibble format that stores book information, quotes, and reviews a user has written.
5. Provide a function that builds the markdown quote with link to reference as an inline or main quote.
6. Provide a way to for a user to use quotes from tibble (or goodreads) in their writing in an `.md` or most likely the `.Rmd`.
7. A function that searches through a blog's `.md` and `.Rmd` files to build a summary of how often quotes have been used or books have been cited.
