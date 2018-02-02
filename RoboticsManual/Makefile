# Makefile for RoboticsBrno/RoboticsManual - LaTeX tu PDF and HTML
# Created by: Jarek Paral

PROJ_DEST=RoboticsManual
LATEX_MAIN_FILE=_dokumentace
OUTPUT_PDF=_pdf
OUTPUT_HTML=_html

all:
	ls -la
	mkdir ${OUTPUT_PDF}  || \
	mkdir ${OUTPUT_HTML} || \
	ls -la
	pdflatex -output-directory ${OUTPUT_PDF} ${LATEX_MAIN_FILE}.tex 
	cp -r ${OUTPUT_PDF}/${LATEX_MAIN_FILE}.pdf ../../output/${OUTPUT_PDF}/${LATEX_MAIN_FILE}.pdf || \
	make4ht ${LATEX_MAIN_FILE}.tex -d ${OUTPUT_HTML}
	cp -r ${OUTPUT_HTML}/ ../../output/ || \
	ls -la ${OUTPUT_PDF}
	ls -la ${OUTPUT_HTML}
	
copy:
	cp -r ${OUTPUT_PDF}/${LATEX_MAIN_FILE}.pdf ../../output/pdf/${LATEX_MAIN_FILE}.pdf
	cp -r ${OUTPUT_HTML}/ ../../output/
	
clean:
	rm -rf ${OUTPUT_PDF}/
	rm -rf ${OUTPUT_HTML}/
