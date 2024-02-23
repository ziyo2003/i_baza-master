import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../assets/colors/color.dart';
import '../../assets/widgets/icons.dart';
class SkipButton extends StatelessWidget {
  final Function() onTap;
  final String text;

  const SkipButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration:
        BoxDecoration(color: grey, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            const Gap(19),
            Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
            SvgPicture.asset(AppIcons.arrowRight2),
            const Gap(8),
          ],
        ),
      ),
    );
  }
}
