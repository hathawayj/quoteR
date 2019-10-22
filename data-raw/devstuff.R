library(devtools)
library(usethis)
library(desc)
library(pkgdown)

pkgdown::build_site()
# https://colinfay.me/build-api-wrapper-package-r/
# https://github.com/ropensci/bib2df

# Remove default DESC
unlink("DESCRIPTION")
# Create and clean desc
my_desc <- description$new("!new")

# Set your package name
my_desc$set("Package", "quoteR")

#Set your name
my_desc$set("Authors@R", "person('J.', 'Hathaway', email = 'j@jhathaway.io', role = c('cre', 'aut'))")

# Remove some author fields
my_desc$del("Maintainer")

# https://hathawayj.github.io/quoteR/

# Set the version
my_desc$set_version("0.0.0.9000")

# The title of your package
my_desc$set(Title = "A quote management package")
# The description of your package
my_desc$set(Description = "Tools for blog and book writers using blogdown or bookdown to manage their quotes.")
# The urls
my_desc$set("URL", "https://hathawayj.github.io/quoteR/")
my_desc$set("BugReports", "https://github.com/hathawayj/quoteR/issues")
# Save everyting
my_desc$write(file = "DESCRIPTION")

# If you want to use the MIT licence, code of conduct, and lifecycle badge
use_mit_license(name = "J. Hathaway")
use_code_of_conduct()
use_lifecycle_badge("Experimental")
use_news_md()

# Get the dependencies
use_package("httr")
use_package("jsonlite")
use_package("curl")
use_package("attempt")
use_package("purrr")
use_package("dplyr")

# Clean your description
use_tidy_description()
