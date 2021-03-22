#include "Types.h"

// 함수 선언
void kPrintString(int iX, int iY, const char* pcString);

// 아래 함수는 C 언어 커널의 시작 부분
// 반드시 다른 함수들보다 가장 앞쪽에 존재해야 함
void Main(void)
{
	kPrintString(0, 10, "Switch To IA-32e Mode Success~!!");
	kPrintString(0, 11, "IA-32e C Language Kernel Start..............[Pass]");
}

// 문자열을 X, Y 위치에 출력
void kPrintString(int iX, int iY, const char* pcString)
{
	CHARACTER* pstScreen = ( CHARACTER* ) 0xB8000;
	int i;

	// X, Y 좌표를 이용해서 문자열을 출력할 주소를 계산
	pstScreen += ( iY * 80 ) + iX;

	// NULL이 나올 때까지 문자열을 출력
	for(i = 0; pcString[i] != 0; i++)
	{
		pstScreen[i].bCharactor = pcString[i];
	}
}
