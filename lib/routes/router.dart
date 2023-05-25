import 'package:bank_sha/ui/pages/home_page.dart';
import 'package:bank_sha/ui/pages/onboarding_page.dart';
import 'package:bank_sha/ui/pages/pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_pin_page.dart';
import 'package:bank_sha/ui/pages/profile_edit_success_page.dart';
import 'package:bank_sha/ui/pages/profile_page.dart';
import 'package:bank_sha/ui/pages/sign_in_page.dart';
import 'package:bank_sha/ui/pages/sign_up_page.dart';
import 'package:bank_sha/ui/pages/sign_up_set_ktp.dart';
import 'package:bank_sha/ui/pages/sign_up_set_profile_page.dart';
import 'package:bank_sha/ui/pages/sign_up_success.dart';
import 'package:bank_sha/ui/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

part 'route_name.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: Routes.splashPage,
    builder: (context, state) => const SplashPage(),
  ),
  GoRoute(
    path: '/onBoardingPage',
    name: Routes.onBoardingPage,
    builder: (context, state) => const OnBoardingPage(),
  ),
  GoRoute(
    path: '/signInPage',
    name: Routes.signInPage,
    builder: (context, state) => const SignInPage(),
  ),
  GoRoute(
    path: '/signUpPage',
    name: Routes.signUpPage,
    builder: (context, state) => const SignUpPage(),
  ),
  GoRoute(
    path: '/signUpSetProfilePage',
    name: Routes.signUpSetProfilePage,
    builder: (context, state) => const SignUpSetProfilePage(),
  ),
  GoRoute(
    path: '/signUpSetKtpPage',
    name: Routes.signUpSetKtpPage,
    builder: (context, state) => const SignUpSetKtpPage(),
  ),
  GoRoute(
    path: '/signUpSuccessPage',
    name: Routes.signUpSuccessPage,
    builder: (context, state) => const SignUpSuccessPage(),
  ),
  GoRoute(
    path: '/homePage',
    name: Routes.homePage,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: '/profilePage',
    name: Routes.profilePage,
    builder: (context, state) => const ProfilePage(),
  ),
  GoRoute(
    path: '/pinPage',
    name: Routes.pinPage,
    builder: (context, state) => const PinPage(),
  ),
  GoRoute(
    path: '/profileEditPage',
    name: Routes.profileEditPage,
    builder: (context, state) => const ProfileEditPage(),
  ),
  GoRoute(
    path: '/profileEditPinPage',
    name: Routes.profileEditPinPage,
    builder: (context, state) => const ProfileEditPinPage(),
  ),
  GoRoute(
    path: '/profileEditSuccessPage',
    name: Routes.profileEditSuccessPage,
    builder: (context, state) => const ProfileEditSuccessPage(),
  ),
]);
