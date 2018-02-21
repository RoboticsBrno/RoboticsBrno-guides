all:
	pandoc Rozcestnik.md -o index.html --template pandoc-bootstrap-template/template.html --css pandoc-bootstrap-template/template.css --self-contained --toc --toc-depth 2

pcguide:
	pandoc Robotarna-pouzivani-PC.md -V geometry:margin=1in -o Robotarna-pouzivani-PC.pdf