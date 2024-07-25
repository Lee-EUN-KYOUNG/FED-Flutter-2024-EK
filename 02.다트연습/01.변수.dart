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

  // 2. dynamic 선언 변수

  // var와 유사하게 다양한 데이터형 할당 가능
  // 단 처음 할당형과 다른형을 넣어도 괜찮
  dynamic myId = "20123abc";
  print("나의 아이디는 $myId");
  myId = 891992;
  print("나의 아이디는 $myId");

  // [문자형안에 코드/변수 출력법 : '${코드}' / '$변수']

  // [다트 언어의 데이터형]
  // 다트 언어는 CS언어이기때문에 변수형 선언이 기본이다
  // 1. 숫자형 :
  // int - 정수 / double - 실수 / num - 정수/실수
  int number1 = 2024;
  print('정수형:$number1');

  // 재할당 가능한가?
  number1 = 888;
  print('정수형:$number1');

  // 형이 다른 다른 숫자를 재할당하면? - 형이 다르면 에러남
  //number1 = 3.2;
  //print('정수형:$number1');

  // 실수형은? double - 실수형은 정수를 넣어도 실수형으로 저장된다
  double number2 = 7;
  number2 = 7.84;
  print('실수형:$number2');

  // 정수/실수를 모두 포괄하는 형은? num
  num number3 = 100;
  number3 = 3.14;
  print("숫자형:$number3");

  // 2. 문자형 : String
  String name = "하하하";
  print("이름 $name 입니다");

  // 3. 불린형 : bool
  bool isTrue = true;
  print("진짜인가 가짜인가 $isTrue");

  /******************************************************************************************* 
    [ 제네릭(Generic)이란?]
    List나 Set 또는 Map 집합 데이터형을 지정할때 내부 데이터형을 정해주는 방법이다
    - 일반화하다 단어 General과 같은 계열의 단어인 Generic을 사용하여 부름
    - 참고 : https://dart-ko.dev/language/generics
    List<제네릭> /  Set<제네릭>  / Map<제네릭>



   *******************************************************************************************/

  // 4. 콜렉션 : 묶음데이터
  // List / Set / Map
  // 4-1. List 형 - 배열과 유사함
  List<String> we = ['a', 'b', 'c'];
  // var we = <String>['a', 'b', 'c']; -> 제네릭을 이퀄 뒤에 표기 가능(변수선언은 var/dynamic 붙여야함)
  
  // 데이터 추가
  we.addAll(["d, e, f, g, h"]);
  we.add("z");
  print(we);
  // 숫자는 다른형이므로 에러남


  print(we[2] + "는 알파벳이다");

  // List형의 길이는 length 속성을 사용함
  print("리스트개수:" + we.length.toString());

  // 일반 더하기로 문자형에 숫자를 더하면 에러남!
  // -> 문자형과 숫자형 더할수 없어서 숫자형을 문자형으로 형변환해야함 [캐스팅:toString() 메서드]
  // var me ["하하," 55];
  // 처음에 형을 var나 dynamic형으로 리스트형을 만들 수 있다
  // List<dynamic> we = ['a', 'b', 'c', 3];
  // 다양한 형으로 사용할 경우에는 dynamic을 사용함

  // 4-2. Set 형 - 순서가 없고 중복되지 않는 데이터 집합. 중복없는 배열과 유사
  // 순서가 없으므로 호출해서 사용하고자 할때는 List형으로 변환후 사용한다 [Set형변수.toList()]
  //Set<int> evens = {2,4,6,8,10,20,14,12,4};
  //Set<dynamic> evens = {2,4,6,8,10,20,14,12,4,'짝수'};
  var evens = {2, 4, 6, 8, 10, 20, 14, 12, 4, '짝수'};
  // var evens = {2,4,6,'짝수','짝수',20,14,12,4,'짝수'};
  print("짝수Set:$evens");

  // 리스트형으로 형변환
  print("짝수Set:${evens.toList()}");
  // 리스트로 변환후 출력가능!
  print("짝수Set을 List변환후[4]:${evens.toList()[4]}");

  // 4-3. Map 형 - 데이터에 라벨링된 데이터 집합 (JS 객체와 유사)





  
} ///////////////////////// main 메서드
