CC = g++
TARGET = ldid
CFLAGS = -I. -c -std=c++11 -o

all: $(TARGET)

$(TARGET) : ldid.o
	$(CC) -o $@ $< -x c lookup2.c -x c sha1.c

ldid.o : ldid.cpp
	$(CC) $(CFLAGS) $@ $<

clean :
	rm -rf *.o $(TARGET)
