import 'package:flutter/material.dart';

// 해당 페이지가 stateful인 이유 = 상태가 있는 위젯
class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({super.key});

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartHeader> {
  // image id 초기화
  int selectedId = 0;

  // selectedPic 배열에 이미지 담기
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
