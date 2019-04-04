CC = g++
GCCVERSION = $(shell gcc --version | grep 4\\.4\\.)

INCLUDEDIR = -I../inc
ETC = -g
LIBDIR = -L../lib
LIB = -lahatconfig
SRC = main.cpp
TARGET = sample

ifeq "$(GCCVERSION)" ""
        ETC += -std=c++11
else
        ETC += -std=c++0x
endif


all : ${TARGET}

$(TARGET) :
		$(CC) -o $@ $(SRC) $(INCLUDEDIR) $(LIBDIR) $(LIB) $(ETC)

clean :
		rm -f $(TARGET)

