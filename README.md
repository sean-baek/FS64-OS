# FS64 OS는 MINT64 OS를 참고하여 만들어지는 운영체제입니다.
# C Kernel complete.

---

# 사용법
1. 우분투의 터미널에서 FS64 OS 디렉토리로 이동.
2. make clean
3. 04.Utility/00.ImageMaker
4. make
5. qemu-system-x86_64 -m 64 -fda ./Disk.img -rtc base=localtime -M pc
