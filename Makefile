#
# Beacon Object File ( BOF ) Compiler
# 
# Used to create object files that are
# compatible with Beacon's inline-execute
# command.
#

BOFNAME := killdefender
CC_x64 := x86_64-w64-mingw32-gcc
LD_x64 := x86_64-w64-mingw32-ld
STRx64 := x86_64-w64-mingw32-strip
CC_x86 := i686-w64-mingw32-gcc
LD_x86 := i686-w64-mingw32-ld
STRx86 := i686-w64-mingw32-strip


all:
	$(CC_x64) -o $(BOFNAME).x64.o -c KillDefender.c -masm=intel -Wno-multichar
	$(CC_x86) -o $(BOFNAME).x86.o -c KillDefender.c -masm=intel -Wno-multichar

clean:
	rm -rf $(BOFNAME).x64.o $(BOFNAME).x86.o
	rm -rf *.o
