
build:
	pandoc -o resume.html --self-contained --css=file://$(abspath resume-css-stylesheet.css) resume.md
	wkhtmltopdf resume.html resume.pdf


# pandoc -o resume.docx --reference-doc=resume-docx-reference.docx resume.md
