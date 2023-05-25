import 'package:bank_sha/routes/router.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit PIN"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE : FULL NAME INPUT
                const CustomFormField(
                  keyboardType: TextInputType.number,
                  title: "Old PIN",
                ),
                const SizedBox(height: 16),
                // NOTE : EMAIL INPUT
                const CustomFormField(
                  keyboardType: TextInputType.number,
                  title: "New PIN",
                ),
                const SizedBox(height: 16),
                CustomFilledButton(
                  title: "Update Now",
                  onPressed: () {
                    context.pushReplacementNamed(Routes.profileEditSuccessPage,
                        extra: false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
