import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../assets/colors/color.dart';
import '../../../../assets/widgets/icons.dart';
import '../../../../assets/widgets/images.dart';
import 'appbar_katalog/appbar.dart';


class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [



                Text(
                  'Ushbu takliflarga e’tibor qarating',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(20),





             
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContaiNer extends StatelessWidget {
  const ContaiNer({
    super.key,
    required this.text,
    required this.imagePath,
  });
  final String text;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.height * 0.13,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: const Color(0xF7F7F7F7),
          borderRadius: BorderRadius.circular(16)),

      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF383838),
                fontWeight: FontWeight.w600),
          ),
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.height * 0.085,
          ),
        ],
      ),
    );
  }
}
