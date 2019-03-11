CC = g++
AR = ar rc

INCLUDEDIR = -Iinc
SRCDIR = src
ETC = -std=c++11 -g
OBJDIR = obj
OBJS = ahatconfig.o
TARGET = libahatconfig.a
TARGETDIR = lib

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
