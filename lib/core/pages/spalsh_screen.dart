import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:i_baza/features/presintation/pages/login_screen/login_screen.dart';

import '../../assets/widgets/icons.dart';
import '../../assets/widgets/images.dart';
import '../../features/onboarding/onboarding.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {

      Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoarding()) );


    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.background),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SvgPicture.asset(AppIcons.mainLogo),
              const Spacer(),
              const CupertinoActivityIndicator(
                radius: 16,
              ),
              const SizedBox(height: 40,)
            ],
          )
      ),
    );
  }
}
