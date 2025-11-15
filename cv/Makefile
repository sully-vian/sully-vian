TYPST = typst compile --root .

TYPST_FILES := $(shell find . -type f -name "*.typ")

PDF_FILES := $(TYPST_FILES:.typ=.pdf)

all: $(PDF_FILES)

%.pdf: %.typ
	$(TYPST) $< $@

