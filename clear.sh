#!/bin/bash 

SRCDIR="src"
OBJDIR="obj"
BINDIR="bin"
MAKEFILE="makefile"

if [ -d $SRCDIR ]; then 	rm -rf $SRCDIR 
fi
if [ -d $OBJDIR ]; then 	rm -rf $OBJDIR 
fi
if [ -d $BINDIR ]; then 	rm -rf $BINDIR 
fi
if [ -e $MAKEFILE ]; then	rm $MAKEFILE 
fi
