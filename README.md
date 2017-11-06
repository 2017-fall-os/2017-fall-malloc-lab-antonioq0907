# os-malloc
This directory contains:

myAllocator.c: a first-fit allocator and next-fit allocator
myAllocator.h: its header file

myAllocatorTest1.c: a test program for my first-fit allocator 
nextAllocatorTest1.c: a test program for next-fit allocator

mallocF.c: a replacement for malloc that uses my allocator specially for first-fit allocator
mallocN.c: a replacement for malloc that uses my allocator specially for next-fit allocator

test1.c: a test program that uses this replacement mallocF
test2.c: a test program that uses this replacement mallocN

These are the test provided by the professor
myAllocatorTest1 and test1 are two different testers as some implementations of printf call mallocF to allocate buffer space. This causes test1 to behave
improperly as it uses myAllocator as a mallocF replacement. In this case myAllocatorTest1 will function correctly. The only difference
between the programs is that test1 uses myAllocator as a mallocF replacement and myAllocatorTest1 uses myAllocator directly.

These are the test modify by me 
nextAllocatorTest1 and test2 are two different testers as some implementations of printf call mallocF to allocate buffer space. This causes test2 to behave improperly as it uses nextAllocator as a mallocN replacement. In thiscase nextAllocatorTest1 will function correctly. The only difference between the programs is that test2 uses myAllocator as a mallocN replacement and nextAllocatorTest1 uses myAllocator directly.

Makefile: targets "all" and "clean"

To compile: 
 $ make 
To clean:
 $ make clean



