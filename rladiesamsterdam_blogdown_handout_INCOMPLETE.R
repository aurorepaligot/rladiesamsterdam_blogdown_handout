# -----------------------------------------------------------------------
# --- Blogdown R-Ladies Amsterdam webinar
# --- 16 April 2020
# --- Aurore Paligot: presenter, Janine Khuc: host & moderator
# --- Based on https://bookdown.org/yihui/blogdown/
# -----------------------------------------------------------------------

# ---------- Step 1: install blogdown and hugo --------------------------

#1.1. Install the blogdown package from CRAN or install it from GitHub

# Install blogdown from CRAN

install.packages('blogdown')

# Install blogdown from GitHub

if (!requireNamespace("devtools")) install.packages('devtools')

devtools::install_github('rstudio/blogdown')

#1.2. Open blogdown library

library(blogdown)

#1.3 : Install Hugo package

blogdown::install_hugo()

#Or, update it if necessary

blogdown::update_hugo()

# Get blogdown documentation

... # enter code here

# ---------- End of Step 1 -------------------------------------------

# ---------- Step 2: Choose your hugo template -----------------------

# To download a hugo template, you should run the function 
# blogdown::new_site() in an empty directory. Take some
# time to explore the templates before downloading anything. 

# Option 1: download lithium, the default template, by running
# the blogdown::new_site() function in the console of your
# new project

# Theme 1: lithium (default)

# Demo: https://themes.gohugo.io/theme/hugo-lithium-theme/
# Hugo: https://themes.gohugo.io/hugo-lithium-theme/
# GitHub: https://github.com/jrutheiser/hugo-lithium-theme

blogdown::new_site() #lithium theme

# Option 2: download one of the templates recommended by the 
# authors of the package documentation. These templates are 
# ideal for beginners and are fully blogdown compliant.

# You need to figure out the GitHub username and repository name
# of the template that you like and enter them as the 'theme' argument 
# of the function blogdown::new_site(theme = 'user/repository'). 

# To save you some time, I listed a few recommended themes below
# with their demo, their GitHub, and their hugo documentation. 

# Theme 2: ghostwriter 

# Demo: https://themes.gohugo.io/theme/ghostwriter/
# Hugo: https://themes.gohugo.io/ghostwriter/
# GitHub: https://github.com/jbub/ghostwriter

blogdown::new_site() #complete theme argument

# Theme 3: academic

# Demo: https://themes.gohugo.io/theme/academic/
# Hugo: https://themes.gohugo.io/academic/
# Github: https://github.com/gcushen/hugo-academic
 
blogdown::new_site() #complete theme argument

# Theme 4: tranquilpeak

# Demo: https://themes.gohugo.io/theme/hugo-tranquilpeak-theme/
# Hugo: https://themes.gohugo.io/hugo-tranquilpeak-theme/
# GitHub: https://github.com/kakawait/hugo-tranquilpeak-theme

blogdown::new_site() #complete theme argument

# Theme 5: creative portfolio

# Demo: https://themes.gohugo.io/theme/hugo-creative-portfolio-theme/portfolio/
# Hugo: https://themes.gohugo.io/hugo-creative-portfolio-theme/
# GitHub: https://github.com/kishaningithub/hugo-creative-portfolio-theme

blogdown::new_site() #complete theme argument

# Theme 6: castanet

# Demo: https://themes.gohugo.io/theme/castanet/
# Hugo: https://themes.gohugo.io/castanet/
# GitHub: https://github.com/mattstratton/castanet

blogdown::new_site() #complete theme argument

# The other suggested themes are "Xmin", "simple a", and "universal"

# Option 3: choose your favorite Hugo theme in the gallery 
# Hugo gallery:https://themes.gohugo.io/ .

# Be cautious when choosing a theme: 
# - check the README documentation provided on GitHub
# - check the Hugo template documentation and be ready to dive in
# - do you have some knowledge of HTML, JavaScript or CSS ?
# - the more complicated the template, the less 'switchable' it will
#   be in the future

# --------------- End of Step 2 ------------------------------------------

# --------------- Step 3: Download Hugo template -------------------------

# Now that you have chosen your template, you are ready to download it.
# Be sure to work on a new empty directory (files like .Rproj are ok!).
# For instance, you can create a new project named 'MyWebsite' and run
# the function from the console. 

... # enter code here (optional)

# --------------- End of Step 3 ------------------------------------------

# --------------- Step 4: Set global options -----------------------------

# A simple way to save you some time when creating new posts is by setting
# general parameters like the desired extension of your posts (.Rmd in our case)
# and your name. To do so, let's create a startup profile file. 

# 4.1. Create a startup profile file 
# You can either create a file that is specific to this project (Option A) 
# or that will be read in all your sessions (Option B). 

## Option A: create a per-project file
file.edit('.Rprofile') #type in the console

## Option B: create a general file
file.edit('~/.Rprofile') #type in the console

# 4.2. Specify extension and  author’s name 
# Set the options in the .Rprofile file that you just created

options ( blogdown.ext = '.Rmd', 
          blogdown.author = 'Author Name') #add your name

# For more advanced options, consult point 1.4 of the blogdown book.
# Wich ones could be useful for you? 

# --------------- End of Step 4 ---------------------------------------

# --------- Step 5: Create your first post ----------------------------

# --------- 5.1. Create a new R Markdown file -------------------------

# Note that you should always create your posts under the /content/ folder,
# in the appropriate subdirectory. In the case of the lithium template, 
# create them in the /content/post directory.
# The /static/ and /public/ directories will be automatically populated 
# with the right files anytime you save the progress made in /content/. 

# 5.1.1 Create a new post with the blogdown function

# To create a new post, you can use the dedicated addin or run the function
# 'blogdown::new_post()'. What happens if you try to run it without 
# specifying any argument? 

blogdown::new_post () #add the required argument 

# Check the different arguments of the function

... #enter code here

# Check the extension of the file and your name: they should 
# match with what you previously set up in your .Rprofile file. 

# 5.1.2. Create a new post with a different author name, a few tags,
# and a markdown extension

blogdown::new_post () #add the relevant arguments

# 5.1.3. Update the metadata from the addins. What can be changed and
# what cannot? 

# --------- 5.2. Write your first post with R Markdown ------

# For a quick presentation  of the R Markdown syntax, check 
# Help > Markdown Quick Reference or Help > Cheatsheets > R Markdown

## Create a post with 
# - a # header
# - a list
# - **bold** and *italic* text
# - a [link](link here)
# - plain text

## Or
# 1. r code (formula)
# 2. r code (results)
# 3. a graph

# Don't forget to save your progress! 

# -------- 5.3. Add an image to your post -------------------------

# The easiest and recommended way to add images to your posts
# is to use the dedicated addin. Why? It will save you the trouble
# to identify the correct /static/ subdirectory and name your file 
# correctly. Go ahead and try to add an image to your post. 

# -------- 5.4. Hide a post ---------------------------------------

# An easy way to hide a draft is to change its extension temporarily.
# For example, change a .Rmd file to a .Rmkd file. 

# -------- 5.5. Preview your website in your web browser ---------

# To preview your website, you can use the dedicated addin or 
# run the function 'blogdown::serve_site()' in the console

blogdown::serve_site()

# --------------- End of Step 5 -----------------------------------

# --------- Step 6: Update the config.TOML file -------------------

# This file contains the structure of your website and is the first to be read. 
# Don't change anything that you're not sure about and in case of doubts, check
# the general Hugo documentation and the specific README documentation that 
# you can find on the GitHub repository of your template. 

# Below are a few simple elements that you can adapt in your config.toml file.
# These examples are based on the lithium template.

# 6.1. Change the title and the description of your website

# 6.2. Change the urls of your Social Media accounts

# 6.3 (Optional) Add a new Social Media section

# 6.4. (Optional) Hide a section

# 6.5. (Optional) Change the website logo

# baseurl = "/"
# languageCode = "en-us"
# title = "A Hugo website" # change the title of your website here
# theme = "hugo-lithium"
# googleAnalytics = ""
# disqusShortname = ""
# ignoreFiles = ["\\.Rmd$", "\\.Rmarkdown$", "_files$", "_cache$"] 

# [permalinks]
# post = "/:year/:month/:day/:slug/"

# [[menu.main]]
# name = "About"
# url = "/about/"
# [[menu.main]]
# name = "GitHub" 
# url = "https://github.com/rstudio/blogdown" #replace the link 
# [[menu.main]]
# name = "Twitter" #suggestion: modify "Twitter" by "LinkedIn"
# url = "https://twitter.com/rstudio" #replace the link 
#[[menu.main]]
#name = "LinkedIn" #suggestion: add "LinkedIn" section
#url = "https://twitter.com/rstudio" #replace the link 

# [params]
# description = "A website built through Hugo and blogdown." #change description

# --------------- End of Step 6 ------------------------------

# -------------- See steps 7,8,9 in the slides ---------------

# --------- Step 10: Update the url of your website ----------

# 1. Update the base url of your config.toml file

baseurl = "https://mywebsite.rbind.io/"

# 2. Create a _redirects file under the /static/ 
# folder and redirect your default Netlify and 
# http subdomains to your primary domain

http://random.netlify.com/* https://mywebsite.rbind.io/:splat 301!
  
http://mywebsite.rbind.io/*  https://mywebsite.rbind.io/:splat 301!
  
# --------------- End of Step 10 -----------------------------
