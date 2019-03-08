# Makefile for RoboticsBrno/RoboticsManual - LaTeX tu PDF and HTML
# Created by: Jarek Paral

# LATEX_FILE_ORIG -> Main LaTeX file
LATEX_FILE_ORIG = _dokumentace
# LATEX_FILE_OUT -> GitHub Pages have a problem with "_", this is workaround
LATEX_FILE_OUT  = dokumentace

# Output folder for generate files
OUTPUT_PDF      = _pdf
OUTPUT_HTML     = _html

# Name of CSS file for better HTML output
CUSTOMCSS       = custom.css

all: pdf web


pdf:
	mkdir -p ${OUTPUT_PDF}
	cp -f ${LATEX_FILE_ORIG}.tex ${LATEX_FILE_OUT}.tex 
	texfot latexmk -halt-on-error -pdf -outdir=${OUTPUT_PDF} ${LATEX_FILE_OUT}.tex
	
web:
	mkdir -p ${OUTPUT_HTML}
	cp -f ${LATEX_FILE_ORIG}.tex ${LATEX_FILE_OUT}.tex 
	texfot make4ht --utf8 ${LATEX_FILE_OUT}.tex -d ${OUTPUT_HTML}
	mv -f ${OUTPUT_HTML}/${LATEX_FILE_OUT}.html ${OUTPUT_HTML}/index.html
	util/index_postprocess ${OUTPUT_HTML}/index.html
	cat $(CUSTOMCSS) >> ${OUTPUT_HTML}/${LATEX_FILE_OUT}.css
	
copy:
	cp -r ${OUTPUT_PDF}/${LATEX_FILE_OUT}.pdf ../../output/${OUTPUT_PDF}/${LATEX_FILE_OUT}.pdf
	cp -r ${OUTPUT_HTML}/ ../../output/

clean: clean-make4ht
	rm -rf ${OUTPUT_PDF}/
	rm -rf ${OUTPUT_HTML}/

clean-make4ht:
	rm -f ${LATEX_FILE_OUT}*
