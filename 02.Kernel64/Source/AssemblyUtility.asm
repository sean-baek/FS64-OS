[BITS 64]	; 이하의 코드는 64비트 코드로 설정

SECTION .text	; text 섹션(세그먼트)을 정의

; C 언어에서 호출할 수 있도록 이름을 노출함
global kInPortByte, kOutPortByte

; 포트로부터 1Byte를 읽음
; PARAM: 포트 번호
kInPortByte:
	push rdx	; 함수에서 임시로 사용하는 레지스터를 스택에 저장
				; 함수의 마지막 부분에서 스택에 삽입된 값을 꺼내 복원

	mov rdx, rdi	; RDX 레지스터에 파라미터 1(포트 번호)를 저장
	mov rax, 0		; RAX 레지스터를 초기화
	in al, dx		; DX 레지스터에 저장된 포트 주소에서 한 Byte를 읽어
					; AL 레지스터에 저장, AL 레지스터는 함수의 반환 값으로 사용됨

	pop rdx			; 함수에서 사용이 끝난 레지스터를 복원
	ret				; 함수를 호출한 다음 코드의 위치로 복귀

; 포트에 1Byte를 씀
; PARAM: 포트 번호, 데이터
kOutPortByte:
	push rdx	; 함수에서 임시로 사용하는 레지스터를 스택에 저장
	push rax	; 함수의 마지막 부분에서 스택에 삽입된 값을 꺼내 복원

	mov rdx, rdi	; RDX 레지스터에 파라미터 1(포트 번호)를 저장
	mov rax, rsi	; RAX 레지스터에 파라미터 2(데이터)를 저장
	out dx, al		; DX 레지스터에 저장된 포트 주소에 AL 레지스터에 저장된 한 Byte를 씀

	pop rax			; 함수에서 사용이 끝난 레지스터를 복원
	pop rdx
	ret 			; 함수를 호출한 다음 코드의 위치로 복귀


