# Final paper for BIOL 319
## Complete draft due as a pull request on Monday, May 7th, 2018 before 11:59 pm
## Complete, revised draft due by Thursday, May 17th, 2017 before 11:59 pm

The **goal of this final project** is to have you apply all of the ecological concepts and skills you have learned, including your skills in R, markdown, scientific writing, and exploratory data analysis, to write a report in the style of a scientific manuscript, based on your novel analyses of a NEON dataset of your choosing. 

You will each be using the dataset(s) you chose and described in your short project proposal.

For this assignment, you will need to complete the script necessary to download and process your data (`download_and_stack.R`) and then do your writeup in the `Analysis.Rmd` file. There is a basic template for the structure of the report in the Rmd file provided. You should modify this document as needed, and add code chunks and markdown text to complete the following set of tasks.

This assignment very much builds on everything we have done so far this semester. You will use the skills you have learned to conduct a more in-depth analysis of your chosen dataset. To should plan to write well-researched Introduction, Methods, Results, and Discussion sections, using Google Scholar or some other tool to search the peer-reviewed literature. You are responsible for finding and citing at least **twenty** peer-reviewed studies in your analysis report.

It matters less to me what specific aspect of the dataset and study you focus on, and more important that you spend some time digging in to the data and developing and testing some hypotheses of your own about what is going on in your chosen dataset.

Please follow the instructions carefully and read them all before getting started.

The first draft of this final report will be worth 40 points and the final revised draft will be worth 100 points. Combined with the short proposal, these three things (proposal, draft, and final report) will account for 25% of your final grade in the course. Take this assignment seriously and start early!!

The grading breakdown for the final version will be as follows (for draft the point ratios will be the same, just multiplied by 0.4):

* 50 points - The report describes an analysis of your chosen dataset -- the analysis and the report should not just be a set of unrelated figures, but should be a focused inquiry into some particular question or questions you have about the data. You will need to describe the context for the results and interpret your findings in the context of background you have read about each of the NEON regions and sites, which is [available here](http://www.neonscience.org/field-sites/field-sites-map/list). For example, [here's a description](http://www.neonscience.org/field-sites/field-sites-map/BART) of the Bartlett Experimental Forest (short ID: BART). Your report should include appropriate background to motivate your investigation, one or more hypotheses, your quantitative results (including somewhere between 5-10 tables/figures and statistical tests if they are appropriate for a particular analyses (t-tests, ANOVAs, linear regressions), and a thorough discussion where you interpret your results. Report text should be: between 4000 and 5000 words (roughly 8-10 single-spaced pages, not counting code), well organized, free of spelling or grammar errors, and written in proper scientific writing style. You should use the built-in spell check in RStudio (there's a little button with ABC and a check mark near the knit button) to catch any spelling errors. You should feel free to reuse code and writing from your past assignments if they will help you support your argument.
* 10 points - At least 20 sources properly cited in the text of your report beyond the one example I've already included. You should add proper BibTeX entries to the `references.bib` file. You can get these BibTeX reference entries from any bibliography management software or from Google Scholar. Then, once you've added each of them and given them a citekey on the first line of each reference, you can use the RStudio add-in from the `citr` package to cite these within your text as you're writing. Then when you knit the document, the sources will be properly formatted for you, and the Sources Cited will be properly populated for you at the end of the report. Doing this will be/was covered in class.
* 10 points - R code in scripts and chunks are appropriately commented and well organized (including with unique names for each chunk).
* 10 points - Appropriate use of git to version control the steps, including adding files and making commits frequently as you work on this assignment, and writing informative and appropriately formatted commit messages. Can't have too many commits, but you can have too few!
* 20 points - Pull Request passes automated checks for file being able to be sucessfully knitted on another machine, as well as having all code style errors fixed. This is an all or nothing set of points, so please make sure your report passes these checks! You can submit your PR early to catch errors. Contact me well before the deadline if you are having trouble with this part of the assignment.

You must submit a **complete** first draft of your work as a Pull Request to the class organization ('2017-usfca-biol-319-spring') on GitHub by 11:59 pm on Monday, May 7th for full credit. We will also be peer reviewing the reports after they are submitted, as usual. The revised final report will be due by Thursday, May 17th, 2018 before 11:59 pm.

Steps:

1. Fork this repository to your own GitHub account.
1. On your laptop, in RStudio, select File > New Project...
1. Choose 'Version Control', then 'git', then paste the URL from your fork and hit tab
1. This will autofill the project name, you can choose where this repository folder will be on your laptop
1. Select 'Open in New Session', then 'Create Project'
1. This should download the repository from GitHub and set up a new project for you in RStudio
1. The first thing you will need to do is edit the script `download_and_stack.R` to retrieve and combine the dataset(s) you will be using. You will need the data product IDs that you included in your project proposal to do this.
1. Then, once the datasets are downloaded and combined, you'll be working in the `Analysis.Rmd` file to analyze the data and write your report. Open the existing file (look for it in the file browser tab in the lower right-hand corner of RStudio). In this script, in addition to filling out each of the sections (Introduction, Methods, Results, Discussion), you will need to create a least 5-10 figures/tables. These will be different for each student, since you are all now working to create your own hypotheses. Don't present the same data in a figure and a table, choose which of the two is more appropriate in order to make your argument. You can (and absolutely should!) reuse any code and text from previous assignments to complete this report. You can just copy and paste out of the files from past weeks or from class as needed. However, remember that it is critical that your report is driven by a focused set of hypotheses, and these should be creative and tied to the information available in the dataset. Don't just ask the same thing you did last time.
    * In your Rmd, you will need to incorporate the appropriate (labelled!) R code chunks to:
      * Use dplyr and ggplot functions to subset, visualize, and analyze the dataset.
      * Add R code chunks as necessary to apply appropriate statistical tests as necessary. You should report the type of test you used, the p-value it returned, and interpretation of what this p-value means about the data you plotted. We talked about how to do t-tests, ANOVAs, and regressions in class.
1. In the Introduction and Methods sections, you should include some background on the NEON project in general, the sites overall, and some additional information on the specific site or sites you are working with. The goal is to give a reader a sense of the diversity of ecosystem types that are represented and where they are located. In the methods, you should very briefly summarize how the data were collected. 
1. In the Discussion section, the goal is for you to apply ecological thinking to explain the results of your hypothesis tests. Think about type of animals found at each site, the vegetation that grows at each site, its climate, seasonal patterns, etc. Remember that in ecology, everything is connected!
1. Add and commit your Rmd file frequently as you work. Be sure to write [meaningful commit messages](https://chris.beams.io/posts/git-commit/) and a descriptive Pull Request title and description.
1. Knit your Rmd file to a github markdown document using the 'knit' button in RStudio and add/commit this md file and any generated figure files as well.
1. Push your commits back to your repository on GitHub. 
1. Open a pull request back to the class repository to submit your assignment. Make sure the Pull Request (PR) has a useful description of the changes you made. 20% of your points for this assignment will be based on your code passing the automated checks on Travis-CI. This will check for two things: that your Rmd file can be successfully knitted, and that your code follow proper style guidelines. If you want to check for any style errors while you are working on the code, you can install the 'lintr' package by typing the following at the console:

```r
install.packages("devtools")
devtools::install_github("jimhester/lintr")
```

and then whenever you want to check your code you can run at the R console (the command prompt) in RStudio:

```r
lintr::lint(filename = "Analysis.Rmd")
```

Don't hesistate to ask questions on Piazza as you work!

**NOTE:** There are some files in this repository that are used for automating testing.

##### Infrastructure for Automated Software Testing

- `.travis.yml`: a configuration file for automatically running [continuous integration](https://travis-ci.com) checks when you submit your pull request, to verify reproducibility of all `.Rmd` notebooks in the repo.  If all `.Rmd` notebooks can render successfully and pass linting (or code style and syntax checks), then the "Build Status" badge above will be green (`build success`), otherwise it will be red (`build failure`).  
- `.Rbuildignore`: a configuration file telling the build script which files to ignore.
- `DESCRIPTION`: a metadata file for the repository, based on the R package standard. Its main purpose here is as a place to list any additional R packages/libraries needed for any of the `.Rmd` files to run.
- `tests/render_rmds.R`: an R script that is run to execute the above described tests, rendering and linting all `.Rmd` notebooks.  
