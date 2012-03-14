# Intro

This is a git repo containing my STAT2011 notes, tutorials and labs. I use a combination of pandoc (markdown), Sweave (embedded R in tex) and R (statistical language) to write my notes.

# Contents

Inside this repo there are several folders

* **static** contains:
  * lecture slides
  * tutorial sheets + answers
  * lab notes
* **labs** contains:
  * the Rnw files for each lab

# Rnw Files

An Rnw file is a file for Sweave. It contains R code within 
<<>>=
@
tags. It can be used for both tex and markdown. When using it for markdown do the following:
$ R
> library('ascii')
> Pandoc('filename.Rnw')
> q()
$ markdown2pdf filename.md

Because md files are automatically generated, md files are in the .gitignore.
