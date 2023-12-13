@echo off

echo "%~dp0"
@REM goto exit

if "%~1"=="cover" goto compile_cover
if "%~1"=="resume" goto compile_resume

:compile_cover
pdflatex -output-directory build cover.tex
if "%~1"=="cover" goto :clean

:compile_resume
pdflatex -output-directory build resume.tex


if "%~1" == "cover" goto join_new_cover
if "%~1" == "resume" goto join_new_resume


:join_fresh
rem Invoke pdftk to merge the files together
pdftk "%~dp0\build\cover.pdf" "%~dp0\build\resume.pdf" cat output "%~dp0\Mitchell Case.pdf"
echo "%~dp0\build\resume.pdf"
copy "%~dp0\build\resume.pdf" "%~dp0\Mitchell Case - Resume.pdf"
copy "%~dp0\build\cover.pdf" "%~dp0\Mitchell Case - Cover Letter.pdf"
goto exit

:join_new_cover
pdftk "%~dp0\build\cover.pdf" "Mitchell Case - Resume.pdf" cat output "Mitchell Case.pdf"
copy "%~dp0\build\cover.pdf" "%~dp0\Mitchell Case - Cover Letter.pdf"
goto exit

:join_new_resume
pdftk "Mitchell Case - Cover Letter.pdf" "%~dp0\build\resume.pdf" cat output "Mitchell Case.pdf"
copy "%~dp0\build\resume.pdf" "%~dp0\Mitchell Case - Resume.pdf"
goto exit


:exit
rem We're done here!