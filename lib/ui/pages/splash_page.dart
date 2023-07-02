import 'dart:async';
import 'package:bank_sha/blocs/auth/auth_bloc.dart';
import 'package:bank_sha/routes/router.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            context.pushReplacementNamed(Routes.homePage);
          } else if (state is AuthFailed) {
            context.pushReplacementNamed(Routes.onBoardingPage);
          }
        },
        child: Center(
          child: Container(
            height: 50,
            width: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_logo_dark.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
