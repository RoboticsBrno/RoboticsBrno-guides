# Makefile for RoboticsBrno/RoboticsManual - LaTeX tu PDF and HTML
# Created by: Jarek Paral

PROJ_DEST=RoboticsManual
LATEX_MAIN_FILE=_dokumentace
OUTPUT_PDF=_pdf
OUTPUT_HTML=_html

all:
	ls -la
	mkdir -p ${OUTPUT_PDF}
	mkdir -p ${OUTPUT_HTML}
	ls -la
	pdflatex -synctex=1 -interaction=nonstopmode ${LATEX_MAIN_FILE}.tex
	makeindex ${LATEX_MAIN_FILE}.idx
	pdflatex -synctex=1 -interaction=nonstopmode ${LATEX_MAIN_FILE}.tex
	pdflatex -synctex=1 -interaction=nonstopmode ${LATEX_MAIN_FILE}.tex
	make4ht --utf8 ${LATEX_MAIN_FILE}.tex -d ${OUTPUT_HTML}
	cp ${LATEX_MAIN_FILE}.pdf ${OUTPUT_PDF}/${LATEX_MAIN_FILE}.pdf
	mv ${OUTPUT_HTML}/${LATEX_MAIN_FILE}.html ${OUTPUT_HTML}/index.html
	ls -la ${OUTPUT_PDF}
	ls -la ${OUTPUT_HTML}

copy:
	cp -r ${OUTPUT_PDF}/${LATEX_MAIN_FILE}.pdf ../../output/${OUTPUT_PDF}/${LATEX_MAIN_FILE}.pdf
	cp -r ${OUTPUT_HTML}/ ../../output/

clean: clean-make4ht
	rm -rf ${OUTPUT_PDF}/
	rm -rf ${OUTPUT_HTML}/

clean-make4ht:
	mv ${LATEX_MAIN_FILE}.tex __d-o-c___.tex
	rm -f ${LATEX_MAIN_FILE}*
	mv __d-o-c___.tex ${LATEX_MAIN_FILE}.tex
