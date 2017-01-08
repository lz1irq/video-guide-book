chapters := $(wildcard chapters/*.md)
images := $(wildcard images/*)

all: $(chapters) $(images)
	pandoc -f markdown -t latex $(chapters) -o book.pdf
