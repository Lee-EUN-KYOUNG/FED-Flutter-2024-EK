// 다트 클래스 믹스인(다중상속) ////
/**************************************************** 
 * [다트 Mixin 이란?]
 * 다중 상속이 필요할 때 mixin을 사용함
 * mixin은 다른 코드에 더해질 목적으로 만들어진 클래스임
 * with 키워드는 클래스에 mixin 클래스를 사용할때 씀
 * 
 * 형식 : 
 * mixin 클래스명{}
 * 또는
 * mixin class 클래스명{}
 * -> class 키워드를 안쓰면 믹스인 전용클래스
 * -> class 키워드를 쓰면 개별 인스턴스 사용가능함!
 * -> 믹스인 전용클래스는 내부 생성자가 없다!
 * 그래서 인스턴스 생성이 안되는 것임!
 * 
 * [ 믹스인 사용클래스 형식 ]
 * class 클래스명 with 믹스인클래스,믹스인클래스,...{}
****************************************************/

// 전기자동차 회사인 테슬라의 부품을 조달하도록 믹스인한다!
class Tesla with Engine, Wheel, Light {
  // 회사명
  final String compName;
  // 자동차 모델명
  final String model;
  // 가격
  final double price;
  // 주행거리
  double distance = 480.0;

  // 생성자 - 입력받을 속성값 셋팅!
  Tesla(this.compName,this.model,this.price);
} /////////// Tesla 클래스 ////////////

// 믹스인 클래스 : 엔진파트
mixin Engine{
  // 엔진마력수
  int power = 5000;
}

// 믹스인 클래스 : 바퀴파트
mixin Wheel {
  // 바퀴정보
  String wheelInfo = "광폭4륜구동바퀴";
}
// 믹스인 클래스 : 라이트파트
mixin class Light { 
  // -> class 키워드사용으로 인스턴스가능!
  // 광도
  double luminosity = 3000.0;
}

/// 믹스인 없으면 어떻게 하지? -> 원래는 컴포지션 방법사용!

// 한국 엔진을 현대차에서 사용하게 함(상속방법아님!)

class K_Engine {
  // 출력
  int power = 8000;
  // 주행거리
  double distance = 500.0;
}

//  현대차 클래스
class HyunDai{
  // 컴포지션 방법 : 
  // 1. 내부에 외부 클래스 변수형선언함!
  K_Engine k_engine;
  // 2. 생성자에 초기화등록함!
  HyunDai(this.k_engine);
}

