# pwn / portals
Heap note challenge. You can create a pretty elaborate chain of "portals" to different points in time.
The time points are allocated dynamically on the heap, and you can leave notes of variable length at each one.
The bug is that when you close a portal to a timepoint, it gets free'd instantly, even if there are other portals pointing to the same timepoint. This let's you craft a fake timepoint using the notes feature and then do some UAF with it.
The solve here uses the free hook in libc to execute system("/bin/sh") upon freeing the crafted timepoint.

