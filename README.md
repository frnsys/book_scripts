A few scripts for compiling directories of markdown notes into fancy pdfs and webpages. Will watch a directory for changes.

Prereqs:

OSX:

    brew install pandoc librsvg
    # Also: [MacTex](https://tug.org/mactex/)

Linux (using `apt`):

    sudo apt-get install librsvg2-bin lmodern

    # The texlive and texlive-xetex apt packages for Ubuntu 14.04 are old af
    # So manually install the latest:
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
    tar -xzvf install-tl-unx.tar.gz
    cd install-tl-*

    # Enter "i" when prompted
    # fyi this is a massive download
    sudo ./install-tl

    # Then add:
    # /usr/local/texlive/2015/bin/x86_64-linux/
    # or its equivalent to your PATH.

    # Then you should be able to do
    # tlmgr update --self
    # tlmgr update --all
    # to stay up-to-date.

    # Check the versions with
    tex --version
    latex --version
    xelatex --version
    pdflatex --version

    # Refer to:
    # - <https://www.tug.org/texlive/acquire-netinstall.html>
    # - <https://www.tug.org/texlive/quickinstall.html>

    # Also worth getting the latest pandoc from:
    # https://github.com/jgm/pandoc/releases
    # then install with gdebi:
    # sudo gdebi pandoc-*.deb

`sleep_until_modified.py` is from [denilsonsa](https://bitbucket.org/denilsonsa/small_scripts/src/b20d762b9c1a0d250ddbd8e26850df62d84b1559/sleep_until_modified.py?at=default).


## Notes

- don't have line breaks in your mathjax blocks, latex will fail on them
- if you have any `newcommand`s, include them in the individual markdown files that need them. The script will automatically remove these (since redundant ones mess up latex), so also set up a yaml header for pandoc to use in one of your markdown files, for example:

```
---
title: Artificial Intelligence Notes
author: Francis Tseng
header-includes:
    - \newcommand{\argmax}{\operatorname*{argmax}}
    - \newcommand{\argmin}{\operatorname*{argmin}}
toc: yes
abstract: "This is my abstract"
---
```


Refer to:

- <https://tex.stackexchange.com/questions/139139/adding-headers-and-footers-using-pandoc>
- <http://pandoc.org/demo/example9/templates.html>
