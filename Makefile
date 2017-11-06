CFLAGS	= -g
CC	= gcc
OBJ	= myAllocatorTest1 nextFitAllocatorTest1 test1 test2

all: $(OBJ)

myAllocatorTest1: myAllocator.o myAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

nextFitAllocatorTest1: myAllocator.o nextFitAllocatorTest1.o
	$(CC) $(CFLAGS) -o $@ $^

test1: myAllocator.o mallocF.o test1.o
	$(CC) $(CFLAGS) -o $@ $^

test2: myAllocator.o mallocN.o test2.o
	$(CC) $(CFLAGS) -o $@ $^
clean:
	rm -f *.o $(OBJ) 

