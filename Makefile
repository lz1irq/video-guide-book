chapters := $(wildcard chapters/*.md)
images := $(wildcard images/*)

all: $(chapters) $(images)
	pandoc -f markdown-tex_math_single_backslash -t latex $(chapters) -o book.pdf
