
build:
	pandoc -o resume.html --embed-resources --standalone --css=file://$(abspath resume-css-stylesheet.css) resume.md
	wkhtmltopdf resume.html resume.pdf

	pandoc -o timeline.html --embed-resources --standalone --css=file://$(abspath resume-css-stylesheet.css) timeline.md
	wkhtmltopdf timeline.html timeline.pdf

# pandoc -o resume.docx --reference-doc=resume-docx-reference.docx resume.md

