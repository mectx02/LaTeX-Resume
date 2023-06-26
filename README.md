# LaTeX Resume
A (hopefully) simple and easy-to-use resume builder using the LaTeX compiler 
engine; built without the use of a complex .cls file.


## 'Install'
In terms of operating systems, this won't work on Windows. Sorry. Works on 
macOS and Linux just fine, though, so if you're on Windows, I would recommend 
getting WSL installed so that you can compile with ease. 

(Unless you want to go the hard route; you do you bud.)

If you don't have LaTeX installed, you should probably install it; otherwise, 
I don't think you're going to get much use out of this. In terms of a TeX 
engine, TinyTeX has a pretty good balance of minimalism and everything you need 
to get started. See the project 
[here](https://github.com/rstudio/tinytex-releases).

In other TeX requirements, you'll need the following packages:
 - fontawesome5
 - standalone
 - import
 - enumitem
 - some other random file that I can't remember off the top of my head. If 
   you're using the TinyTeX distribution, it should tell you what it is, then 
   just use `tlmgr install [blah]` to install it.

With regards to other utilities, `pdftk` is required in order to concatenate 
the resulting generated pdf files together. `make` is used to help execute the 
compiling commands. You can likely grab these from your package manager. (On 
macOS, if you have Homebrew installed, grab the `pdftk-java` version.)

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

