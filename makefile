NAME=MAKEFILE_SAYS_EDIT_ME

main:
	pdflatex cover.tex
	pdflatex cover.tex
	pdflatex resume.tex
	pdflatex resume.tex
	rm -rfv *.aux
	rm -rfv *.log
	rm -rfv *.out
	rm -rfv *.sta
	pdftk cover.pdf resume.pdf cat output "$(NAME).pdf"
	mv resume.pdf "$(NAME) - Resume.pdf"
	mv cover.pdf "$(NAME) - Cover Letter.pdf"


resume:
	pdflatex resume.tex
	pdflatex resume.tex
	rm -rfv *.aux
	rm -rfv *.log
	rm -rfv *.out
	rm -rfv *.sta	
	pdftk "$(NAME) - Cover Letter.pdf" resume.pdf cat output "$(NAME).pdf"
	mv resume.pdf "$(NAME) - Resume.pdf"


cover:
	pdflatex cover.tex
	pdflatex cover.tex
	rm -rfv *.aux
	rm -rfv *.log
	rm -rfv *.out
	rm -rfv *.sta
	pdftk cover.pdf "$(NAME) - Resume.pdf" cat output "$(NAME).pdf"
	mv resume.pdf "$(NAME) - Cover Letter.pdf"


finish:
	pdftk cover.pdf resume.pdf cat output "$(NAME).pdf"
	mv resume.pdf "$(NAME) - Resume.pdf"
	mv cover.pdf "$(NAME) - Cover Letter.pdf"


.PHONY: clean
clean:
	rm -rfv *.aux
	rm -rfv *.log
	rm -rfv *.out
	rm -rfv *.sta
	rm -rfv *.pdf
