import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            _buildDetailNameAndPrice(),
            _buildDetailRatingAndReviewCount(),
            _buildDetailColorOptions(),
            _buildDetailButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Urban Soft AL 10.0",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("\$699",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildDetailRatingAndReviewCount() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Icon(Icons.star, color: Colors.yellow),
          Spacer(),
          Text("review"),
          Text("(26)", style: TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  Widget _buildDetailColorOptions() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("color Options"),
          SizedBox(height: 10),
          Row(
            children: [
              _buildDetailIcon(Colors.black),
              _buildDetailIcon(Colors.green),
              _buildDetailIcon(Colors.orange),
              _buildDetailIcon(Colors.grey),
              _buildDetailIcon(Colors.white),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailButton(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: () {
          // CupertinoAlertDialog : 스타일 경고 대화 상자
          showCupertinoDialog(
            context: context,
            // 해당 앱의 정보를 가진 채로, stack으로 생성
            builder: (context) => CupertinoAlertDialog(
                title: Text("장바구니에 담으시겠습니까?"),
                // 질문
                actions: [
                  CupertinoDialogAction(
                    child: Text(
                      "확인",
                      style: TextStyle(color: Colors.blue),
                    ),
                    // 버튼
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ]),
          );
        },
        style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            )),
        child: Text(
          "Add to Cart",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildDetailIcon(Color mColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Stack(
        // 1. 첫번째 stack
        children: [
          Container(
            // 아래의 원
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(), // border 가지기
              shape: BoxShape.circle, // 박스모양 = circle
            ),
          ),
          Positioned(
            top: 5, // 아래의 원 테두리에서 top을 5만큼 떨어뜨리기
            left: 5,
            child: ClipOval(
              // 자식을 circle 모양으로 자르기
              child: Container(
                // 위의 원
                width: 40,
                height: 40,
                color: mColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
