# LaTeX Resume
A (hopefully) simple and easy-to-use resume builder using the LaTeX compiler 
engine; built without the use of a complex .cls file.


## Install
LaTeX is a requirement -- if you don't have it installed, I recommend 
using [TinyTeX](https://github.com/rstudio/tinytex-releases) as it 
is a quick install and relatively easy to get started with.

With regards to external utilities, you'll need the following:
 - pdftk (`pdftk-java` on Linux/macOS; whatever the Windows variant is)
 - make (Linux/macOS specific; not required on Windows)

In other TeX requirements, you'll need the following packages:
 - fontawesome5
 - standalone
 - import
 - enumitem
 - svn-prov
These are provided with the `make init` command by default.

This works as a base LaTeX project to help you get started. Just clone the 
repository and edit what you need. Just make sure that the default text is 
removed before you submit anything for real.


## How it's structured

### Headers
Each page should have your name across the top; the first page of the cover 
letter and resume should also have your contact info. These are provided with 
the `name.tex` and `contact.tex` files located in the `sections` folder. You can 
edit those to your needs.

### Sections
Things such as previous jobs, projects you've worked on, etc. are typically 
divided into sections. There are a few pre-defined pages that you can use 
(located in the sections directory), such as `projects`, `cover_letter`, 
`education`, etc. that seem to be pretty common amongst typical resumes. If you 
need more than that, however, `activities.tex` is blank, so you can copy that to
 your heart's content.


## How do I make the PDF?
Just call `make`. It auto generates three PDF files: a resume, a cover letter, 
and a combined file. (All three are generated to PDF files since that seems to 
be the most popular document format.)

Shoud you need to just make one or the other, you can call `make resume` or 
`make cover` for just one of those documents. The combined document should 
update as well.

Make a mistake? Call `make clean` to erase all compiled documents and start from 
scratch.

Just need to finalize the PDF files? Call `make finish` and it should just 
generate the finalized PDF files without too much headache.


## How do I use LaTeX?

There's lots of great resouces that you can use to get you started. 
[Overleaf](https://www.overleaf.com) is a pretty good resource for just the 
basics of getting started. Honestly, though, I think you can just start 
overwriting some of the files and seeing what the result is. Just make sure to 
compile the document with `make` when you're finished.

