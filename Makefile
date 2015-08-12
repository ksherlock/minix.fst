

SOURCES = main.aii volume.aii get_file_info.aii \
	open.aii \
	id_disk.aii stubs.aii tables.aii device.aii

OBJECTS=$(SOURCES:.aii=.o)

LD=mpw linkIIgs
ASM=mpw asmIIgs
#ASMFLAGS=-d DEBUG_S16 -d DebugSymbols
ASMFLAGS=-d DebugSymbols
LDFLAGS=

minix.fst : Makefile $(OBJECTS)
	$(LD) $(LDFLAGS) -t \$$BD -at \$$0000 $(OBJECTS) -o $@


clean:
	rm -f $(OBJECTS)


#.aii.o:
%.o : %.aii
	$(ASM) $(ASMFLAGS) $< -o $@