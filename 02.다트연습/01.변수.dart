// 01. 다트 문법 1 : 변수 사용하기

// main 메서드를 가정 먼저 호출한다
// void는 리턴값이 없다는 표시

void main(List<String> args) {

  // 1. var 선언 변수

  // var는 할당되는 값으로 형이 결정되는 자유로운 변수 선언 형식
  // 단 처음에 할당한 형식으로만 재할당 가능함
  var myHome = "내집이야";
  // 출력 은 print();
  // cs 언어는 마지막 세미콜론 필수
  print(myHome);
  // var 선언 변수는 재할당 가능할까?
  //myHome = 32;
  // 처음에 넣은 데이터형과 다른형은 할당 불가
  myHome = "너의 집도 매우 크다";
  print(myHome);

  // 

}
