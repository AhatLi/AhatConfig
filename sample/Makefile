CC = g++

INCLUDEDIR = -I../inc
ETC = -std=c++11 -g
LIBDIR = -L../lib
LIB = -lahatconfig
SRC = main.cpp
TARGET = sample

all : ${TARGET}

$(TARGET) :
		$(CC) -o $@ $(SRC) $(INCLUDEDIR) $(LIBDIR) $(LIB) $(ETC)

clean :
		rm -f $(TARGET)

