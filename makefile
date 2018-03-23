# SOURCE: 
# https://hiltmon.com/blog/2013/07/03/a-simple-c-plus-plus-project-structure/

CC = gcc
SRCDIR := src_c
BUILDDIR := build_c
TARGET := bin_c/quadsolver

SRCEXT := c
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))
CFLAGS := -g -Wall
LIB := -lm
INC := -I include_c

$(TARGET): $(OBJECTS)
	@echo "Linking..."
	@echo "$(CC) $^ -o $(TARGET) $(LIB)"; $(CC) $^ -o $(TARGET) $(LIB)

$(BUILDDIR)/%.o: $(SRCDIR)/%.$(SRCEXT)
	@mkdir -p $(BUILDDIR) $(BUILDDIR)/rline $(BUILDDIR)/wline $(BUILDDIR)/validate
	@mkdir -p $(BUILDDIR)/qsolve $(BUILDDIR)/main $(BUILDDIR)/cunit
	@echo "$(CC) $(CFLAGS) $(INC) -c -o $@ $<"; $(CC) $(CFLAGS) $(INC) -c -o $@ $<

clean:
	@echo "Cleaning..."
	@echo "$(RM) -r $(BUILDDIR)/* $(TARGET)"; $(RM) -r $(BUILDDIR)/* $(TARGET)

.PHONY: clean
