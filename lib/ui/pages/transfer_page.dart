import 'package:bank_sha/routes/router.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transfer"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            "Search",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          const CustomFormField(
            title: "by username",
            isShowTitle: false,
          ),
          // buildRecentUsers()
          buildResult(),
          const SizedBox(height: 274),
          CustomFilledButton(
            title: "Continue",
            onPressed: () {
              context.pushNamed(Routes.transferAmountPage);
            },
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget buildRecent() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Users",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          const TransferRecentUserItem(
            imageUrl: "assets/img_friend1.png",
            name: "Yoenna",
            username: "yoenna",
            isVerified: true,
          ),
          const TransferRecentUserItem(
            imageUrl: "assets/img_friend2.png",
            name: "John",
            username: "yoenna",
          ),
          const TransferRecentUserItem(
            imageUrl: "assets/img_friend3.png",
            name: "Masaea",
            username: "yoenna",
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Result",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              TransferResultUserItem(
                imageUrl: "assets/img_friend1.png",
                name: "Yonna Jie",
                username: "yoenna",
                isVerified: true,
              ),
              TransferResultUserItem(
                imageUrl: "assets/img_friend2.png",
                name: "Yonna Jie",
                username: "yoenna",
                isVerified: true,
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
