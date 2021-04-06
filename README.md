# FS64 OS는 MINT64 OS를 참고하여 만들어지는 운영체제입니다.
# C Kernel complete.

---

# 사용법
1. cd FS64\ OS -> make -> sudo qemu-system-x86_64 -m 64 -fda ./Disk.img -rtc base=localtime -M pc

Or

2. cd FS64\ OS/04.Utility/00.ImageMaker -> make -> cd ../../ -> make -> sudo qemu-system-x86_64 -m 64 -fda ./Disk.img -rtc base=localtime -M pc
