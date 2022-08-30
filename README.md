# LaTeX Resume
A (hopefully) simple and easy-to-use resume builder using the LaTeX compiler engine.


## 'Install'
If you don't have LaTeX installed, you should probably install it; otherwise, this isn't going to work well. [Click here](https://www.latex-project.org/get/) to see how for your operating system.

In addition to having the LaTeX base, this document uses font-awesome graphics for the little emoticons in the header. Install `font-awesome` via your package manager, or make sure that you have the `texlive-fonts-extra` something-or-other installed when you install LaTeX for the first time.

This works as a base LaTeX project to help you get started. Just clone the repository and edit what you need. Hopefully there are some sane defaults provided. 


## How it's structured

### Headers
There are two different types of headers: `header_short` and `header`. `header_short` simply has the name and job description, while `header` extends it by adding in contact information. You can view how to add your contact information in the `header` and `header_short` files directly.

### Sections
Things such as previous jobs, projects you've worked on, etc. are typically divided into sections. There are a few pre-defined pages that you can use (located in the sections directory), such as `projects`, `cover_letter`, `education`, etc. that seem to be pretty common amongst typical resumes. If you need more than that, however, `activities.tex` is blank, so you can copy that to your heart's content.


## How do I make the PDF?
Just call `make main` for both the cover letter and resume together, or `make independent` for two separate documents.


## "It doesn't look that great!"
Well, it's LaTeX. And part of the point of this was to be simple - not convoluted. 

( So far no one's complained, but I'm just anticipating someone getting angry about how it looks. )

If you think it's ugly and want to change it, there are tons of helpful documentation around that you can use to customize it, such as [overleaf](https://overleaf.com) and [the makers themselves](https://latex-project.org/help).

If you've just had a look at main.pdf (a really basic output of what it can be), just try filling it out with your information first before you make any big decisions. It'll probably look better when it's filled in.
