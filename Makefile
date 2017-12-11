CFLAGS	= -g
CC	= gcc
OBJ	= myAllocatorTest1 test1

all: $(OBJ)

myAllocatorTest1: myAllocator.o myAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

test1: myAllocator.o malloc.o test1.o
	$(CC) $(CFLAGS) -o $@ $^

test : 
	./test1
	
allocTest:
	./myAllocatorTest1
clean:
	rm -f *.o $(OBJ) 
