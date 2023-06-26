import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson10/screens/home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    navigeteToNextPage(context);

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: SvgPicture.asset("assets/svg/logoapp.svg"),
      ),
    );
  }

  void navigeteToNextPage(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) =>  HomePage(),
          ),
          (route) => false);
    });
  }
}
