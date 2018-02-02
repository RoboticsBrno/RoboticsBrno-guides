# Makefile for RoboticsBrno/RoboticsManual - LaTeX tu PDF and HTML
# Created by: Jarek Paral

PROJ_DEST=RoboticsManual
LATEX_MAIN_FILE=_dokumentace.tex
OUTPUT_PDF=_pdf
OUTPUT_HTML=_html

all:
	ls -la
	mkdir ${OUTPUT_PDF}
	mkdir ${OUTPUT_HTML}
	ls -la
	pdflatex -output-directory ${OUTPUT_PDF} ${LATEX_MAIN_FILE}
	make4ht ${LATEX_MAIN_FILE} -d ${OUTPUT_HTML}
	ls -la ${OUTPUT_PDF}
	ls -la ${OUTPUT_HTML}
	

clean:
	rm -rf ${OUTPUT_PDF}/
	rm -rf ${OUTPUT_HTML}/
