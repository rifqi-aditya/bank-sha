import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeUserItem extends StatelessWidget {
  final String imageUrl;
  final String userName;
  const HomeUserItem(
      {required this.imageUrl, required this.userName, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 17),
      width: 90,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 13),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "@${userName}",
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          )
        ],
      ),
    );
  }
}
