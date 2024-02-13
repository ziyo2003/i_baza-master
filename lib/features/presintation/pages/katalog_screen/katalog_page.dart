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
                const Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: [
                    ContaiNer(
                      text: 'Kiyim va\n poyabzallar',
                      imagePath: 'assets/images/koylakk.png',
                    ),
                    ContaiNer(
                      text: 'Uy uchun',
                      imagePath: 'assets/images/uy.png',
                    ),
                    ContaiNer(
                      text: 'Bolalar uchun',
                      imagePath: 'assets/images/quyon.png',
                    ),
                    ContaiNer(
                      text: 'Oziq-ovqat\n mahsulotlari',
                      imagePath: 'assets/images/karam.png',
                    ),
                    ContaiNer(
                      text: 'Go‘zalik va\n gigiyena',
                      imagePath: 'assets/images/atr.png',
                    ),
                    ContaiNer(
                      text: 'Dorixona',
                      imagePath: 'assets/images/dori.png',
                    ),
                    ContaiNer(
                      text: '“Zoo”\n mahsulotlar',
                      imagePath: 'assets/images/zoo.png',
                    ),
                    ContaiNer(
                      text: 'Maishiy kimyo\n mahsulotlari',
                      imagePath: 'assets/images/kimyo.png',
                    ),
                    ContaiNer(
                      text: 'Sport\n mahsulotlari',
                      imagePath: 'assets/images/top.png',
                    ),
                    ContaiNer(
                      text: 'Avtomobillar\n uchun',
                      imagePath: 'assets/images/afto.png',
                    ),
                    ContaiNer(
                      text: 'Elektronika',
                      imagePath: 'assets/images/oyp.png',
                    ),
                    ContaiNer(
                      text: 'Maishiy texnika',
                      imagePath: 'assets/images/noteboc.png',
                    ),
                    ContaiNer(
                      text: 'Maishiy texnika',
                      imagePath: 'assets/images/mashina.png',
                    ),
                    ContaiNer(
                      text: 'Mebel',
                      imagePath: 'assets/images/mebel.png',
                    ),
                    ContaiNer(
                      text: 'Qurilish va\n ta’mirlash',
                      imagePath: 'assets/images/de.png',
                    ),
                    ContaiNer(
                      text: 'Maktab va ofis\n uchun',
                      imagePath: 'assets/images/daftar.png',
                    ),
                    ContaiNer(
                      text: 'Gullar',
                      imagePath: 'assets/images/gul.png',
                    ),
                    ContaiNer(
                      text: 'Zargarlik\n buyumlari',
                      imagePath: 'assets/images/zar.png',
                    ),
                    ContaiNer(
                      text: "Uy va bog'",
                      imagePath: 'assets/images/che.png',
                    ),
                    ContaiNer(
                      text: 'Uskunalar',
                      imagePath: ('assets/images/tel.png'),
                    ),
                  ],
                ),
                Text(
                  'Ushbu takliflarga e’tibor qarating',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      height: MediaQuery.of(context).size.height * 0.378,
                      width: MediaQuery.of(context).size.width * 0.438,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 2,
                          color: textFieldNoFocusBackgound,
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                AppImages.rotbam,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        100 *
                                        3.5,
                                    width: MediaQuery.of(context).size.width /
                                        100 *
                                        13.4,
                                    decoration: const BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "5",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                            fontSize: 12,
                                            color: white,
                                          ),
                                        ),
                                        const Gap(4),
                                        SvgPicture.asset(
                                          AppIcons.yulduzcha,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width:
                            MediaQuery.of(context).size.width / 100 * 41.6,
                            height:
                            MediaQuery.of(context).size.height / 100 * 18.1,
                            padding: const EdgeInsets.only(
                              top: 8,
                              right: 7,
                              bottom: 7,
                              left: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: catalog,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "KNAUF",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                const Gap(4),
                                Text(
                                  "Shtukaturka ROTBAND KNAUF",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    color: grey,
                                  ),
                                ),
                                const Gap(4),
                                Text(
                                  "184 000 UZS",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    color: pinputErrorBorder,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const Gap(2),
                                Text(
                                  "84 000 UZS",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                const Gap(4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          100 *
                                          4,
                                      width: MediaQuery.of(context).size.width /
                                          100 *
                                          28,
                                      decoration: BoxDecoration(
                                        color: yellow,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(AppIcons.savatcha),
                                          Text(
                                            "Savatchaga",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                              color: textBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Gap(10),
                                    SvgPicture.asset(AppIcons.like),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //______________________________________________________2________
                    Container(
                      clipBehavior: Clip.hardEdge,
                      height: MediaQuery.of(context).size.height * 0.378,
                      width: MediaQuery.of(context).size.width * 0.438,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 2,
                          color: textFieldNoFocusBackgound,
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                AppImages.oboi,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        100 *
                                        3.5,
                                    width: MediaQuery.of(context).size.width /
                                        100 *
                                        13.4,
                                    decoration: const BoxDecoration(
                                      color: yellow,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(12),
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "5",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                            fontSize: 12,
                                            color: white,
                                          ),
                                        ),
                                        const Gap(4),
                                        SvgPicture.asset(
                                          AppIcons.yulduzcha,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            width:
                            MediaQuery.of(context).size.width / 100 * 41.6,
                            height:
                            MediaQuery.of(context).size.height / 100 * 18.1,
                            padding: const EdgeInsets.only(
                              top: 8,
                              right: 7,
                              bottom: 7,
                              left: 8,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: catalog,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Quelyd",
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                const Gap(4),
                                Text(
                                  "“Quelyd” Gul qog‘ozlar uchun yelim",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    color: grey,
                                  ),
                                ),
                                const Gap(4),
                                Text(
                                  "84 000 UZS",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                const Spacer(),
                                const Gap(4),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      height:
                                      MediaQuery.of(context).size.height /
                                          100 *
                                          4,
                                      width: MediaQuery.of(context).size.width /
                                          100 *
                                          28,
                                      decoration: BoxDecoration(
                                        color: yellow,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(AppIcons.savatcha),
                                          Text(
                                            "Savatchaga",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(
                                              color: textBlack,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Gap(10),
                                    SvgPicture.asset(AppIcons.like),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 100 * 5.7,
                  decoration: BoxDecoration(
                    color: pinkish,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Barchasini ko‘rish",
                        style:
                        Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: yellow,
                        ),
                      ),
                      const Gap(8),
                      SvgPicture.asset(AppIcons.arrow),
                    ],
                  ),
                ),
                const Gap(20)
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
      // padding: EdgeInsets.only(right: 20,left: 20),
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.height * 0.13,

      // SvgPicture.asset("assets/svg/koy.svg"),

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
