CC = g++
AR = ar rc
GCCVERSION = $(shell gcc --version | grep 4\\.4\\.)

INCLUDEDIR = -Iinc
SRCDIR = src
ETC = -g
OBJDIR = obj
OBJS = ahatconfig.o
TARGET = libahatconfig.a
TARGETDIR = lib

ifeq "$(GCCVERSION)" ""
        ETC += -std=c++11
else
        ETC += -std=c++0x
endif

all : ${TARGET}

$(TARGET) : $(TARGETDIR) $(OBJS)
		$(AR) $(TARGETDIR)/$@ $(addprefix $(OBJDIR)/,$(OBJS))

$(OBJS) : $(OBJDIR)
		$(CC) -o $(OBJDIR)/$@ -c $(SRCDIR)/$(@:%.o=%.cpp) $(INCLUDEDIR) $(ETC)

$(TARGETDIR) :
		mkdir -p $(TARGETDIR)

$(OBJDIR) :
		mkdir -p $(OBJDIR)
			
clean :
		rm -rf $(OBJDIR) $(TARGETDIR)

