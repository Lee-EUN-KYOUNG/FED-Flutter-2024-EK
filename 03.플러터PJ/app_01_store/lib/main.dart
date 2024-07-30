import 'package:flutter/material.dart';

// 보통 material.dart 를 가져다가 사용함

// 최초 실행 함수 main
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // override : 기존 클래스를 재정의함
  // overroade : 동명의 매서드 다중 정의
  @override
    // 최상위 위젯 : 전체 틀을 잡아줌
    // 모든 기본 단위 위젯은 리턴코드를 가짐
  Widget build(BuildContext context) {
    return MaterialApp(
      // "DEBUG"글자 오른쪽 상단 글자 없앰
      debugShowCheckedModeBanner:false,
      // 탭바에 출력되는 타이틀
      title: 'STORE APP',
      // 필요시 디장니 테마 적용
      theme: ThemeData(), 
      // 홈에 작성하는 위젯이 실제 이 앱이 표시되는 위젯임
      home : StorePage(),
      //home: const MyHomePage(title: '플러터 테스트 홈페이지'),
    );
  }
}

// StorePage 클래스 만들기 - 비상태관리 위젯 단축키 : st1
class StorePage extends StatelessWidget {
  // 기본적으로 생성자 메서드에서 부모키를 셋업함
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    // BuildContext는 클래스는 위젯 묶음을 만들어주는 역할을 한다
    /// 리턴 코드 : 스케폴드 클래스로 비상태관리 코드를 만들어준다
    return Scaffold(
      // 상단영역 아래 body파트를 표시하는 속성
      // SafeArea 위젯은 기기별 맞춤 설정 해줌
      body: SafeArea(

      // 앱의 기본 방향은 세로 방향임(Column이다-Row를 포함한다)
      // body의 구성요소는 Child 속성으로 표현
      child: Column(
        // Children 속성은 컬럼 하위 요소들임
        children: [
           /*
            [ Padding 위젯 ]
              padding: EdgeInsets.all(4방향전체),
              padding: EdgeInsets.only(left/top/right/bottom특정방향만),
              padding: EdgeInsets.symmetric(수직/수평중),
           */
          Padding(
            padding: EdgeInsets.all(25.0),
            // 패딩 안에 child 속성으로 Row위젯 표현
            // Row 위젯 - 가로 방향 위젯 요소 넣기
            child: Row(
              // children 속성 - Row 하위 요소들임
              children: [
                // 글자는 Text 위젯
                Text(
                  "Woman",
                  // style 속성에 글자 속정은 TextStyle()
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                ),
                Spacer(), // 사이 간격 일정하게
                Text(
                  "Kids",
                  // style 속성에 글자 속정은 TextStyle()
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                ),
                Spacer(), // 사이 간격 일정하게
                // 로고 이미지 추가 - 이미지 위젯 사용
                // pubspec.yaml 환경 설정 파일에 assets 속성에 별도의 경로 셋팅이 없으면
                // root 아래 assests 폴더의 이미지를 가져옴
                Image.asset(
                  'logo.png', // 이미지명
                  width: 70.0, // 이미지 크기
                  
                  ),
                  Spacer(), // 사이 간격 일정하게
                   Text(
                  "Shoes",
                  // style 속성에 글자 속정은 TextStyle()
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                ),
                Spacer(), // 사이 간격 일정하게
                 Text(
                  "Bag",
                  // style 속성에 글자 속정은 TextStyle()
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                ),
              ],
            ),
          ),
          // 하단 이미지 추가하기
          // expanded 위젯 - flex 속성이 있어서 등분할함
          Expanded(
            child: Image.asset(
              "bag.jpeg",// 이미지 경로명
              fit:BoxFit.cover, // 이미지 박스 채우기
            )
            ),
            // 이미지 사이 간격은 빈박스로 조정한다
            // 가로는 width 속성 세로는 height 속성으로 간격 조정함
          SizedBox(height: 5.0),
          Expanded(
            child: Image.asset(
              "cloth.jpeg",// 이미지 경로명
              fit:BoxFit.cover, // 이미지 박스 채우기
            )
            ),
        ],
      ),
      ),

    );
  }
}
  