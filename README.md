# docker-radioshark

This is my Dockerized control for RadioShark v1 (unknown if it'll work for v2).  It's currently being tweaked but appears to work.

## Problems
- The code is based on the older libhid-devel package, which was last supported in Fedora 25 (thus the older distro is being used to host the binary).
- There's still some tweaking needed to get PulseAudio to recognize the new source.  Notes are below
