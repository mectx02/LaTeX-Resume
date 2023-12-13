NAME=MAKEFILE_SAYS_EDIT_ME

main:
	if [ ! -d "build" ]; then mkdir build; fi
	if [ ! -f "build/cover.pdf" ]; then \
		pdflatex -output-directory build cover.tex; \
	fi
	pdflatex -output-directory build cover.tex
	if [ ! -f "build/resume.pdf" ]; then \
		pdflatex -output-directory build resume.tex; \
	fi
	pdflatex -output-directory build resume.tex
	pdftk build/cover.pdf build/resume.pdf cat output "$(NAME).pdf"
	cp build/resume.pdf "$(NAME) - Resume.pdf"
	cp build/cover.pdf "$(NAME) - Cover Letter.pdf"


# I'll leave this here in case you decide that you want to use it.
# resume:
# 	pdflatex -output-directory build resume.tex
# 	pdftk "$(NAME) - Cover Letter.pdf" build/resume.pdf cat output "$(NAME).pdf"
# 	cp build/resume.pdf "$(NAME) - Resume.pdf"
# 	drive push -no-prompt .


cover:
	pdflatex -output-directory build cover.tex
	pdftk build/cover.pdf "$(NAME) - Resume.pdf" cat output "$(NAME).pdf"
	cp build/cover.pdf "$(NAME) - Cover Letter.pdf"
	drive push -no-prompt .


edit-cover:
	vim sections/cover_letter.tex


.PHONY : clean
clean:
	# I am a lazy man; it turns out it is a lot easier to just
	# remove and then remake the directory
	rm -rfv build
	mkdir build
