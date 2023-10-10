import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

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
    "assets/p1.jpeg", // 0
    "assets/p2.jpeg", // 1
    "assets/p3.jpeg", // 2
    "assets/p4.jpeg" // 3
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset(selectedPic[selectedId], fit: BoxFit.cover)),
    );
  }

  Widget _buildHeaderSelector() {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildHeaderSelectorButton(0, Icons.directions_bike),
          _buildHeaderSelectorButton(1, Icons.motorcycle),
          _buildHeaderSelectorButton(2, CupertinoIcons.car_detailed),
          _buildHeaderSelectorButton(3, CupertinoIcons.airplane),
        ],
      ),
    );
  }

  Widget _buildHeaderSelectorButton(int id, IconData mIcon) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: IconButton(
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
        icon: Icon(mIcon, color: Colors.black),
        // 아이콘의 컬러는 고정이 일 때,
        // 매개변수를 Icon으로 해 놓으면 -> icon.mIcon으로 지정
        // 매개변수를 IconData로 해 놓으면 -> Icon(mIcon)으로 지정
      ),
    );
  }
}
