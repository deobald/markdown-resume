
build:
	pandoc -o cover-letter.html --self-contained --css=file://$(abspath cover-letter-css-stylesheet.css) cover-letter.md
	wkhtmltopdf cover-letter.html cover-letter.pdf


# pandoc -o resume.docx --reference-doc=resume-docx-reference.docx resume.md
