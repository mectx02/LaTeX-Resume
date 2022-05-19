# LaTeX Resume
A (hopefully) simple and easy-to-use resume builder using the LaTeX compiler engine.


## 'Install'
If you don't have LaTeX installed, you should probably install it; otherwise, this isn't going to work well. [Click here](https://www.latex-project.org/get/) to see how for your operating system.

This works as a base LaTeX project to help you get started. Just clone the repository and edit what you need. Hopefully there are some sane defaults provided. 


## How it's structured

### Headers
There are two different types of headers: `header_short` and `header`. `header_short` simply has the name and job description, while `header` extends it by adding in contact information. You can view how to add your contact information in the `header` and `header_short` files directly.

### Sections
Things such as previous jobs, projects you've worked on, etc. are typically divided into sections. There are a few pre-defined pages that you can use, such as `projects`, `cover_letter`, `education`, etc. that seem to be pretty common amongst typical resumes. If you need more than that, however, `activities.tex` is blank, so you can copy that to your heart's content.


## How do I make the PDF?
I developed this mainly using VSCode, so if you're using that, there should be some default build tasks for you to use that should make it easy to compile. The default build tasks builds up both the cover letter and the resume into one file, while the `build independent` creates them separately. 

If you're using something else, then the Makefile should still work. Just call `make main` for both the cover letter and resume together, or `make independent` for two separate documents.


## "It doesn't look that great!"
Well, it's LaTeX. And part of the point of this was to be simple - not convoluted. 

( So far no one's complained, but I'm just anticipating someone getting angry about how it looks. )

If you think it's ugly and want to change it, there are tons of helpful documentation around that you can use to customize it, such as [overleaf](https://overleaf.com) and [the makers themselves](https://latex-project.org/help).
