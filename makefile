# makefile
TARGET = main

CXX = g++
# compiling flags here
CFLAGS = -Wall

LINKER   = g++
# linking flags here
LFLAGS_PREV = -Wall 
LFLAGS_POST = -lsfml-graphics -lsfml-window -lsfml-system

# directories
SRCDIR   = src
OBJDIR   = obj
BINDIR   = bin

SOURCES  := $(wildcard $(SRCDIR)/*.cpp)
INCLUDES := $(wildcard $(SRCDIR)/*.h)
OBJECTS  := $(addprefix $(OBJDIR)/,$(notdir $(SOURCES:.cpp=.o)))

.PHONY: run all clean main creature


all: $(BINDIR)/$(TARGET)

run: $(BINDIR)/$(TARGET)
		@echo ----------------------------------------
		@echo -- Running $(TARGET) 
		@./$(BINDIR)/main
		@echo -- Done
		@echo ----------------------------------------
		@echo 

$(BINDIR)/$(TARGET): $(OBJECTS)
		@echo ----------------------------------------
		@echo -- Linking $(TARGET)
		@$(CXX) $(LDFLAGS_PREV) -o $(BINDIR)/main $^
		@echo -- Done 
		@echo ----------------------------------------
		@echo 

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
		@echo ----------------------------------------
	 @echo -- Compiling $< 
		@echo -- $< => $@ 
		@$(CXX) $(CFLAGS) -c $< -o $@					
		@echo -- Done
		@echo ----------------------------------------
		@echo 

clean: 
		@echo ----------------------------------------
		@echo -- Cleaning all modules 
		@rm $(BINDIR)/main $(OBJECTS)
		@echo -- Done
		@echo ----------------------------------------
		@echo
