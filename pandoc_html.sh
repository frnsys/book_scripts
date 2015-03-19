if [ "$#" -ne 2 ]; then
    echo "Usage: pandoc_html <source directory> <output filename>"
    echo "Example: pandoc_html raw index.html"
    exit
fi

cp style.css $1/style.css
cd $1
pandoc -s --mathjax --toc -o ../$2 -c style.css *.md
rm style.css
cd $OLDPWD