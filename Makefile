

SOURCES = main.aii volume.aii get_file_info.aii \
	open.aii get_dir_entry.aii get_mark.aii set_mark.aii get_eof.aii \
	close.aii read.aii \
	id_disk.aii stubs.aii tables.aii device.aii params.aii globals.aii \
	debug.aii

OBJECTS=$(SOURCES:.aii=.o)

LD=mpw linkIIgs
ASM=mpw asmIIgs
#ASMFLAGS=-d DEBUG_S16 -d DebugSymbols
ASMFLAGS=-case on -d DebugSymbols -d DEBUG_S16
LDFLAGS=

minix.fst : Makefile $(OBJECTS)
	$(LD) $(LDFLAGS) -t \$$BD -at \$$0000 $(OBJECTS) -o $@


clean:
	rm -f minix.fst $(OBJECTS)


#.aii.o:
%.o : %.aii
	$(ASM) $(ASMFLAGS) $< -o $@