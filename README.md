# export-md-to-pdf
terminal tool to export markdown file, export it to pdf and visualise it in zathura

## Instalation
```bash
git clone https://github.com/jgallern/export-md-to-pdf.git
cd export-md-to-pdf
chmod +x build.sh
./build.sh
```

## How to use it

```bash
export.sh nameoffile.md
```
and a nameoffile.pdf file will be create and open in zathura

## Yaml to put at the beginning of your markdown file
```markdown
---
title: "Title"
subtitle: "Subtitle"
toc-own-page: true
author: authorname
date: 22/11/2023
titlepage: true
geometry: margin=3cm
output: pdf_document
code-block-font-size: \normalsize
---
```

## Dependencies

* [pandoc](https://github.com/jgm/pandoc) to convert from ".md" to ".pdf" 
* [Texlive](https://tug.org/texlive) : latex environnement
* [zathura](https://github.com/pwmt/zathura) to open pdf files
* [eisvogel](https://github.com/enhuiz/eisvogel/tree/master) to have a nice template
* [mermaid-filter](https://github.com/raghur/mermaid-filter) to integrate mermaid diagrams

## Common errors

if you got the error

``` sh
! LaTeX Error: File `footnotebackref.sty' not found.

Type X to quit or <RETURN> to proceed,
or enter new name. (Default extension: sty)

Enter file name:
! Emergency stop.
<read *>
```
you don't have all the required latex package, take a look at [this page](https://github.com/enhuiz/eisvogel/tree/master#required-latex-packages)
