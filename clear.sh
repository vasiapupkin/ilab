#!/bin/bash 
SRCDIR="src"
OBJDIR="obj"
BINDIR="bin"
MAKEFILE="makefile"
rm -rf $SRCDIR $OBJDIR $BINDIR
if [ -d $SRCDIR ]; then rm -rf $SRCDIR
if [ -d $OBJDIR ]; then rm -rf $OBJDIR
if [ -d $BINDIR ]; then rm -rf $BINDIR
if [ -e $MAKEFILE ]; then rm $MAKEFILE
