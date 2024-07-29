# markdown-resume

## Custom Notes

This is a resume I wrote for a 2nd Wave commercial open source EM role.
It doesn't really reflect my work history outside of that particular lens. -steven

## Concept

The simplest possible resume workflow from markdown source.

Changing the content or styling of a resume or CV is a relatively common event that
can be a frustrating, time-consuming hassle. This repo contains starter files for
the simplest possible workflow where resume *content* is maintained in a simple markdown
file and generating `.html`, `.pdf` and `.docx` output formats can be automated with
two tools: `pandoc` and `wkhtmltopdf`.

## Installing:

```sh
brew install pandoc
brew install wkhtmltopdf
```

Linux:

```sh
sudo apt install pandoc
sudo apt install xfonts-75dpi  # needed for xkhtmltopdf:
https://wkhtmltopdf.org/downloads.html
```

## Original junk:

**Still trying to decide if this is the workflow for you? Here are the original markdown files and the three output files for your persual**:

[Markdown](resume.md) . [HTML](resume.html) . [PDF](resume.pdf) . [Word Doc](resume.docx)

[Full work flow details](http://sdsawtelle.github.io/blog/output/simple-markdown-resume-with-pandoc-and-wkhtmltopdf.html) are contained in a short blog post.
