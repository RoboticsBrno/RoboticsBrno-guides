all:
	pandoc Rozcestnik.md -o index.html --template pandoc-bootstrap-template/template.html --css pandoc-bootstrap-template/template.css --self-contained --toc --toc-depth 2
