SYSCONF_LINK = g++
CPPFLAGS     = -Iinclude
LDFLAGS      =
LIBS         = -lm

DESTDIR = ./
TARGET  = main
SRCDIR  = src
OBJDIR  = build

# Create a list of source files.
SOURCES := $(wildcard $(SRCDIR)/*.cpp)
# Create a list of object files by replacing the source directory with the object directory and changing the file extension.
OBJECTS := $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SOURCES))

# The final build step.
all: $(DESTDIR)$(TARGET)

$(DESTDIR)$(TARGET): $(OBJECTS)
	@mkdir -p $(DESTDIR)
	$(SYSCONF_LINK) -Wall $(LDFLAGS) -o $@ $^ $(LIBS)

# Rule to compile the source files.
$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir -p $(OBJDIR)
	$(SYSCONF_LINK) -Wall $(CPPFLAGS) -c $< -o $@

clean:
	-rm -rf $(OBJDIR)
	-rm -f $(DESTDIR)$(TARGET)
	-rm -f *.tga
