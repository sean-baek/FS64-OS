# FS64 OS는 MINT64 OS를 참고하여 만들어지는 운영체제입니다.
# 아직은 부트로더까지만 완성되었지만, 추후 보호 모드와 IA-32e 모드 등이 추가되면서 부트 로더 또한 업데이트 될 것입니다.

---

# 사용법
1. 우분투의 터미널에서 FS64 OS 디렉토리로 이동합니다.
2. make
3. qemu-system-x86-64 -m 64 -fda ./Disk.img -rtc base=localtime -M pc 을 입력하여 실행.
