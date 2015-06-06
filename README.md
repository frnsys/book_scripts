A few scripts for compiling directories of markdown notes into fancy pdfs and webpages. Will watch a directory for changes.

Requires:

- `pandoc`
- `librsvg`
- LaTeX support (for OSX, see [MacTex](https://tug.org/mactex/); for Linux, `apt-get install texlive`)

`sleep_until_modified.py` is from [denilsonsa](https://bitbucket.org/denilsonsa/small_scripts/src/b20d762b9c1a0d250ddbd8e26850df62d84b1559/sleep_until_modified.py?at=default).


## Notes

- don't have line breaks in your mathjax blocks, latex will fail on them
- if you have any `newcommand`s, include them in the individual markdown files that need them. The script will automatically remove these (since redundant ones mess up latex), so also set up a yaml header for pandoc to use in one of your markdown files, for example:

    ---
    title: Artificial Intelligence Notes
    author: Francis Tseng
    header-includes:
        - \newcommand{\argmax}{\operatorname*{argmax}}
        - \newcommand{\argmin}{\operatorname*{argmin}}
    toc: yes
    abstract: "This is my abstract"
    ---


Refer to:

- <https://tex.stackexchange.com/questions/139139/adding-headers-and-footers-using-pandoc>
- <http://pandoc.org/demo/example9/templates.html>
