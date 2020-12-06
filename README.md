# Minix FST
9/13/2015

This is a read-only FST for the Minix v1 and v1L (linux extended) file system.

## Known issues:

### VolumeGS:

* Always reports 0 free blocks.

* Since minix doesn't support volume labels (I plan to extend to do so eventually), all disks are named "minix".  This implies only 1 minix disk may be mounted at a time.

### ReadGS / GetDirEntryGS:

* Only the first 7K of a file may be read.

### General:

* I haven't quite figured out the proper way to handle disk swapping (all FSTs seem to do it different).  For now, it's probably best if you just avoid swapping disks while a file is open :).

* ProDOS 16 versions of the calls haven't been extensively tested.


### Non-FST Bugs:

* StdFileDialog (Save) reports 65536 free of 800k

* Finder windows display garbage for the FST name (should be fixed in GS.OS 6.0.4 :)

