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





                // Column(
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Container(
                //           clipBehavior: Clip.hardEdge,
                //           height: MediaQuery.of(context).size.height * 0.378,
                //           width: MediaQuery.of(context).size.width * 0.438,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(12),
                //             border: Border.all(
                //               width: 2,
                //               color: textFieldNoFocusBackgound,
                //             ),
                //           ),
                //           child: Column(
                //             children: [
                //               Stack(
                //                 children: [
                //                   Image.asset(
                //                     AppImages.rotbam,
                //                   ),
                //                   Row(
                //                     mainAxisAlignment: MainAxisAlignment.end,
                //                     children: [
                //                       Container(
                //                         height: MediaQuery.of(context).size.height /
                //                             100 *
                //                             3.5,
                //                         width: MediaQuery.of(context).size.width /
                //                             100 *
                //                             13.4,
                //                         decoration: const BoxDecoration(
                //                           color: yellow,
                //                           borderRadius: BorderRadius.only(
                //                             bottomLeft: Radius.circular(12),
                //                           ),
                //                         ),
                //                         alignment: Alignment.center,
                //                         child: Row(
                //                           mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                           children: [
                //                             Text(
                //                               "5",
                //                               style: Theme.of(context)
                //                                   .textTheme
                //                                   .bodySmall!
                //                                   .copyWith(
                //                                 fontSize: 12,
                //                                 color: white,
                //                               ),
                //                             ),
                //                             const Gap(4),
                //                             SvgPicture.asset(
                //                               AppIcons.yulduzcha,
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //               Container(
                //                 width:
                //                 MediaQuery.of(context).size.width / 100 * 41.6,
                //                 height:
                //                 MediaQuery.of(context).size.height / 100 * 18.1,
                //                 padding: const EdgeInsets.only(
                //                   top: 8,
                //                   right: 7,
                //                   bottom: 7,
                //                   left: 8,
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(9),
                //                   color: catalog,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       "KNAUF",
                //                       style: Theme.of(context).textTheme.labelLarge,
                //                     ),
                //                     const Gap(2),
                //                     Text(
                //                       "Shtukaturka ROTBAND KNAUF",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .labelLarge!
                //                           .copyWith(
                //                         color: grey,
                //                       ),
                //                     ),
                //                     const Gap(2),
                //                     Text(
                //                       "184 000 UZS",
                //                       style: TextStyle(fontSize: 12,color: Colors.red),
                //
                //                     ),
                //                     const Gap(2),
                //                     Text(
                //                       "84 000 UZS",
                //                       style: TextStyle(fontSize: 16),
                //                     ),
                //                     const Gap(1),
                //                     Row(
                //                       children: [
                //                         Container(
                //                           padding: const EdgeInsets.all(8),
                //                           height:
                //                           MediaQuery.of(context).size.height /
                //                               100 *
                //                               4,
                //                           width: MediaQuery.of(context).size.width /
                //                               100 *
                //                               28,
                //                           decoration: BoxDecoration(
                //                             color: yellow,
                //                             borderRadius: BorderRadius.circular(6),
                //                           ),
                //                           child: Row(
                //                             children: [
                //                               SvgPicture.asset(AppIcons.savatcha),
                //                               Text(
                //                                 "Savatchaga",
                //                                 style: Theme.of(context)
                //                                     .textTheme
                //                                     .labelLarge!
                //                                     .copyWith(
                //                                   color: textBlack,
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                         const Gap(10),
                //                         SvgPicture.asset(AppIcons.like),
                //                       ],
                //                     )
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //         //______________________________________________________2________
                //         Container(
                //           clipBehavior: Clip.hardEdge,
                //           height: MediaQuery.of(context).size.height * 0.378,
                //           width: MediaQuery.of(context).size.width * 0.438,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(12),
                //             border: Border.all(
                //               width: 2,
                //               color: textFieldNoFocusBackgound,
                //             ),
                //           ),
                //           child: Column(
                //             children: [
                //               Stack(
                //                 children: [
                //                   Image.asset(
                //                     AppImages.oboi,
                //                   ),
                //                   Row(
                //                     mainAxisAlignment: MainAxisAlignment.end,
                //                     children: [
                //                       Container(
                //                         height: MediaQuery.of(context).size.height /
                //                             100 *
                //                             3.5,
                //                         width: MediaQuery.of(context).size.width /
                //                             100 *
                //                             13.4,
                //                         decoration: const BoxDecoration(
                //                           color: yellow,
                //                           borderRadius: BorderRadius.only(
                //                             bottomLeft: Radius.circular(12),
                //                           ),
                //                         ),
                //                         alignment: Alignment.center,
                //                         child: Row(
                //                           mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                           children: [
                //                             Text(
                //                               "5",
                //                               style: Theme.of(context)
                //                                   .textTheme
                //                                   .bodySmall!
                //                                   .copyWith(
                //                                 fontSize: 12,
                //                                 color: white,
                //                               ),
                //                             ),
                //                             const Gap(4),
                //                             SvgPicture.asset(
                //                               AppIcons.yulduzcha,
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //               Container(
                //                 width:
                //                 MediaQuery.of(context).size.width / 100 * 41.6,
                //                 height:
                //                 MediaQuery.of(context).size.height / 100 * 18.1,
                //                 padding: const EdgeInsets.only(
                //                   top: 8,
                //                   right: 7,
                //                   bottom: 7,
                //                   left: 8,
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(9),
                //                   color: catalog,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       "Quelyd",
                //                       style: Theme.of(context).textTheme.labelLarge,
                //                     ),
                //                     const Gap(4),
                //                     Text(
                //                       "“Quelyd” Gul qog‘ozlar uchun yelim",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .labelLarge!
                //                           .copyWith(
                //                         color: grey,
                //                       ),
                //                     ),
                //                     const Gap(4),
                //                     Text(
                //                       "84 000 UZS",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .bodyMedium!
                //                           .copyWith(
                //                         fontSize: 16,
                //                       ),
                //                     ),
                //                     const Spacer(),
                //                     const Gap(4),
                //                     Row(
                //                       children: [
                //                         Container(
                //                           padding: const EdgeInsets.all(8),
                //                           height:
                //                           MediaQuery.of(context).size.height /
                //                               100 *
                //                               4,
                //                           width: MediaQuery.of(context).size.width /
                //                               100 *
                //                               28,
                //                           decoration: BoxDecoration(
                //                             color: yellow,
                //                             borderRadius: BorderRadius.circular(6),
                //                           ),
                //                           child: Row(
                //                             children: [
                //                               SvgPicture.asset(AppIcons.savatcha),
                //                               Text(
                //                                 "Savatchaga",
                //                                 style: Theme.of(context)
                //                                     .textTheme
                //                                     .labelLarge!
                //                                     .copyWith(
                //                                   color: textBlack,
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                         const Gap(10),
                //                         SvgPicture.asset(AppIcons.like),
                //                       ],
                //                     )
                //                   ],
                //                 ),
                //               ),
                //
                //             ],
                //           ),
                //         ),
                //
                //       ],
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Flexible(
                //           flex: 1,
                //           child: Container(
                //             clipBehavior: Clip.hardEdge,
                //             height: MediaQuery.of(context).size.height * 0.378,
                //             width: MediaQuery.of(context).size.width * 0.438,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(12),
                //               border: Border.all(
                //                 width: 2,
                //                 color: textFieldNoFocusBackgound,
                //               ),
                //             ),
                //             child: Column(
                //               children: [
                //                 Stack(
                //                   children: [
                //                     Image.asset(
                //                       AppImages.matrix,
                //                     ),
                //                     Row(
                //                       mainAxisAlignment: MainAxisAlignment.end,
                //                       children: [
                //                         Container(
                //                           height: MediaQuery.of(context).size.height /
                //                               100 *
                //                               3.5,
                //                           width: MediaQuery.of(context).size.width /
                //                               100 *
                //                               13.4,
                //                           decoration: const BoxDecoration(
                //                             color: yellow,
                //                             borderRadius: BorderRadius.only(
                //                               bottomLeft: Radius.circular(12),
                //                             ),
                //                           ),
                //                           alignment: Alignment.center,
                //                           child: Row(
                //                             mainAxisAlignment:
                //                             MainAxisAlignment.center,
                //                             children: [
                //                               Text(
                //                                 "5",
                //                                 style: Theme.of(context)
                //                                     .textTheme
                //                                     .bodySmall!
                //                                     .copyWith(
                //                                   fontSize: 12,
                //                                   color: white,
                //                                 ),
                //                               ),
                //                               const Gap(4),
                //                               SvgPicture.asset(
                //                                 AppIcons.yulduzcha,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ],
                //                 ),
                //                 Flexible(
                //                   flex: 2,
                //                   child: Container(
                //                     width:
                //                     MediaQuery.of(context).size.width / 100 * 41.6,
                //                     height:
                //                     MediaQuery.of(context).size.height / 100 * 18.1,
                //                     padding: const EdgeInsets.only(
                //                       top: 8,
                //                       right: 7,
                //                       bottom: 7,
                //                       left: 8,
                //                     ),
                //                     decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(9),
                //                       color: catalog,
                //                     ),
                //                     child: Column(
                //                       crossAxisAlignment: CrossAxisAlignment.start,
                //                       children: [
                //                         Text(
                //                           "Matrix",
                //                           style: Theme.of(context).textTheme.labelLarge,
                //                         ),
                //                         const Gap(2),
                //                         Text(
                //                           "Matrix kesish uchun maxsus asbob",
                //                           style: Theme.of(context)
                //                               .textTheme
                //                               .labelLarge!
                //                               .copyWith(
                //                             color: grey,
                //                           ),
                //                         ),
                //                         const Gap(2),
                //                         Text(
                //                           "184 000 UZS",
                //                           style: Theme.of(context)
                //                               .textTheme
                //                               .labelLarge!
                //                               .copyWith(
                //                             color: pinputErrorBorder,
                //                             fontSize: 10,
                //                           ),
                //                         ),
                //                         const Gap(1),
                //                         Text(
                //                           "84 000 UZS",
                //                           style: TextStyle(fontSize: 16,)
                //                         ),
                //                         const Gap(4),
                //                         Row(
                //                           children: [
                //                             Container(
                //                               padding: const EdgeInsets.all(6),
                //                               height:
                //                               MediaQuery.of(context).size.height /
                //                                   100 *
                //                                   4,
                //                               width: MediaQuery.of(context).size.width /
                //                                   100 *
                //                                   28,
                //                               decoration: BoxDecoration(
                //                                 color: yellow,
                //                                 borderRadius: BorderRadius.circular(6),
                //                               ),
                //                               child: Row(
                //                                 children: [
                //                                   SvgPicture.asset(AppIcons.savatcha),
                //                                   Text(
                //                                     "Savatchaga",
                //                                     style: Theme.of(context)
                //                                         .textTheme
                //                                         .labelLarge!
                //                                         .copyWith(
                //                                       color: textBlack,
                //                                     ),
                //                                   ),
                //                                 ],
                //                               ),
                //                             ),
                //                             const Gap(10),
                //                             SvgPicture.asset(AppIcons.like),
                //                           ],
                //                         )
                //                       ],
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //         //______________________________________________________2________
                //         Container(
                //           clipBehavior: Clip.hardEdge,
                //           height: MediaQuery.of(context).size.height * 0.378,
                //           width: MediaQuery.of(context).size.width * 0.438,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(12),
                //             border: Border.all(
                //               width: 2,
                //               color: textFieldNoFocusBackgound,
                //             ),
                //           ),
                //           child: Column(
                //             children: [
                //               Stack(
                //                 children: [
                //                   Image.asset(
                //                     AppImages.mapei,
                //                   ),
                //                   Row(
                //                     mainAxisAlignment: MainAxisAlignment.end,
                //                     children: [
                //                       Container(
                //                         height: MediaQuery.of(context).size.height /
                //                             100 *
                //                             3.5,
                //                         width: MediaQuery.of(context).size.width /
                //                             100 *
                //                             13.4,
                //                         decoration: const BoxDecoration(
                //                           color: yellow,
                //                           borderRadius: BorderRadius.only(
                //                             bottomLeft: Radius.circular(12),
                //                           ),
                //                         ),
                //                         alignment: Alignment.center,
                //                         child: Row(
                //                           mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                           children: [
                //                             Text(
                //                               "5",
                //                               style: Theme.of(context)
                //                                   .textTheme
                //                                   .bodySmall!
                //                                   .copyWith(
                //                                 fontSize: 12,
                //                                 color: white,
                //                               ),
                //                             ),
                //                             const Gap(4),
                //                             SvgPicture.asset(
                //                               AppIcons.yulduzcha,
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //               Container(
                //                 width:
                //                 MediaQuery.of(context).size.width / 100 * 41.6,
                //                 height:
                //                 MediaQuery.of(context).size.height / 100 * 18.1,
                //                 padding: const EdgeInsets.only(
                //                   top: 8,
                //                   right: 7,
                //                   bottom: 7,
                //                   left: 8,
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(9),
                //                   color: catalog,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       "MAPEI",
                //                       style: Theme.of(context).textTheme.labelLarge,
                //                     ),
                //                     const Gap(4),
                //                     Text(
                //                       "“Ultracolor Plus”dan maxsus jamlanma",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .labelLarge!
                //                           .copyWith(
                //                         color: grey,
                //                       ),
                //                     ),
                //                     const Gap(4),
                //                     Text(
                //                       "41 500 UZS",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .bodyMedium!
                //                           .copyWith(
                //                         fontSize: 16,
                //                       ),
                //                     ),
                //                     const Spacer(),
                //                     const Gap(4),
                //                     Row(
                //                       children: [
                //                         Container(
                //                           padding: const EdgeInsets.all(8),
                //                           height:
                //                           MediaQuery.of(context).size.height /
                //                               100 *
                //                               4,
                //                           width: MediaQuery.of(context).size.width /
                //                               100 *
                //                               28,
                //                           decoration: BoxDecoration(
                //                             color: yellow,
                //                             borderRadius: BorderRadius.circular(6),
                //                           ),
                //                           child: Row(
                //                             children: [
                //                               SvgPicture.asset(AppIcons.savatcha),
                //                               Text(
                //                                 "Savatchaga",
                //                                 style: Theme.of(context)
                //                                     .textTheme
                //                                     .labelLarge!
                //                                     .copyWith(
                //                                   color: textBlack,
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                         const Gap(10),
                //                         SvgPicture.asset(AppIcons.like),
                //                       ],
                //                     )
                //                   ],
                //                 ),
                //               ),
                //
                //             ],
                //           ),
                //         ),
                //
                //       ],
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Expanded(
                //           child: Container(
                //             clipBehavior: Clip.hardEdge,
                //             height: MediaQuery.of(context).size.height * 0.378,
                //             width: MediaQuery.of(context).size.width * 0.438,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(12),
                //               border: Border.all(
                //                 width: 2,
                //                 color: textFieldNoFocusBackgound,
                //               ),
                //             ),
                //             child: Column(
                //               children: [
                //                 Stack(
                //                   children: [
                //                     Image.asset(
                //                       AppImages.puma,
                //                     ),
                //                     Row(
                //                       mainAxisAlignment: MainAxisAlignment.end,
                //                       children: [
                //                         Container(
                //                           height: MediaQuery.of(context).size.height /
                //                               100 *
                //                               3.5,
                //                           width: MediaQuery.of(context).size.width /
                //                               100 *
                //                               13.4,
                //                           decoration: const BoxDecoration(
                //                             color: yellow,
                //                             borderRadius: BorderRadius.only(
                //                               bottomLeft: Radius.circular(12),
                //                             ),
                //                           ),
                //                           alignment: Alignment.center,
                //                           child: Row(
                //                             mainAxisAlignment:
                //                             MainAxisAlignment.center,
                //                             children: [
                //                               Text(
                //                                 "5",
                //                                 style: Theme.of(context)
                //                                     .textTheme
                //                                     .bodySmall!
                //                                     .copyWith(
                //                                   fontSize: 12,
                //                                   color: white,
                //                                 ),
                //                               ),
                //                               const Gap(4),
                //                               SvgPicture.asset(
                //                                 AppIcons.yulduzcha,
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                       ],
                //                     ),
                //                   ],
                //                 ),
                //                 Container(
                //                   width:
                //                   MediaQuery.of(context).size.width / 100 * 41.6,
                //                   height:
                //                   MediaQuery.of(context).size.height / 100 * 18.1,
                //                   padding: const EdgeInsets.only(
                //                     top: 8,
                //                     right: 7,
                //                     bottom: 7,
                //                     left: 8,
                //                   ),
                //                   decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(9),
                //                     color: catalog,
                //                   ),
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //                       Text(
                //                         "PUMA",
                //                         style: Theme.of(context).textTheme.labelLarge,
                //                       ),
                //                       const Gap(2),
                //                       Text(
                //                         "Krasovki. Puma Ferrari Drift Cat 5 Ultra",
                //                         style: Theme.of(context)
                //                             .textTheme
                //                             .labelLarge!
                //                             .copyWith(
                //                           color: grey,
                //                         ),
                //                       ),
                //                       const Gap(2),
                //                       Text(
                //                         "184 000 UZS",
                //                         style: Theme.of(context)
                //                             .textTheme
                //                             .labelLarge!
                //                             .copyWith(
                //                           color: pinputErrorBorder,
                //                           fontSize: 10,
                //                         ),
                //                       ),
                //                       const Gap(1),
                //                       Text(
                //                           "84 000 UZS",
                //                           style: TextStyle(fontSize: 16,)
                //                       ),
                //                       const Gap(4),
                //                       Row(
                //                         children: [
                //                           Container(
                //                             padding: const EdgeInsets.all(6),
                //                             height:
                //                             MediaQuery.of(context).size.height /
                //                                 100 *
                //                                 4,
                //                             width: MediaQuery.of(context).size.width /
                //                                 100 *
                //                                 28,
                //                             decoration: BoxDecoration(
                //                               color: yellow,
                //                               borderRadius: BorderRadius.circular(6),
                //                             ),
                //                             child: Row(
                //                               children: [
                //                                 SvgPicture.asset(AppIcons.savatcha),
                //                                 Text(
                //                                   "Savatchaga",
                //                                   style: Theme.of(context)
                //                                       .textTheme
                //                                       .labelLarge!
                //                                       .copyWith(
                //                                     color: textBlack,
                //                                   ),
                //                                 ),
                //                               ],
                //                             ),
                //                           ),
                //                           const Gap(10),
                //                           SvgPicture.asset(AppIcons.like),
                //                         ],
                //                       )
                //                     ],
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //         //______________________________________________________2________
                //         Container(
                //           clipBehavior: Clip.hardEdge,
                //           height: MediaQuery.of(context).size.height * 0.378,
                //           width: MediaQuery.of(context).size.width * 0.438,
                //           decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(12),
                //             border: Border.all(
                //               width: 2,
                //               color: textFieldNoFocusBackgound,
                //             ),
                //           ),
                //           child: Column(
                //             children: [
                //               Stack(
                //                 children: [
                //                   Image.asset(
                //                     AppImages.sneg,
                //                   ),
                //                   Row(
                //                     mainAxisAlignment: MainAxisAlignment.end,
                //                     children: [
                //                       Container(
                //                         height: MediaQuery.of(context).size.height /
                //                             100 *
                //                             3.5,
                //                         width: MediaQuery.of(context).size.width /
                //                             100 *
                //                             13.4,
                //                         decoration: const BoxDecoration(
                //                           color: yellow,
                //                           borderRadius: BorderRadius.only(
                //                             bottomLeft: Radius.circular(12),
                //                           ),
                //                         ),
                //                         alignment: Alignment.center,
                //                         child: Row(
                //                           mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                           children: [
                //                             Text(
                //                               "5",
                //                               style: Theme.of(context)
                //                                   .textTheme
                //                                   .bodySmall!
                //                                   .copyWith(
                //                                 fontSize: 12,
                //                                 color: white,
                //                               ),
                //                             ),
                //                             const Gap(4),
                //                             SvgPicture.asset(
                //                               AppIcons.yulduzcha,
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ],
                //               ),
                //               Container(
                //                 width:
                //                 MediaQuery.of(context).size.width / 100 * 41.6,
                //                 height:
                //                 MediaQuery.of(context).size.height / 100 * 18.1,
                //                 padding: const EdgeInsets.only(
                //                   top: 8,
                //                   right: 7,
                //                   bottom: 7,
                //                   left: 8,
                //                 ),
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(9),
                //                   color: catalog,
                //                 ),
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       "Snegurochka",
                //                       style: Theme.of(context).textTheme.labelLarge,
                //                     ),
                //                     const Gap(4),
                //                     Text(
                //                       "“Snegurochka” A4 500 varaq",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .labelLarge!
                //                           .copyWith(
                //                         color: grey,
                //                       ),
                //                     ),
                //                     const Gap(4),
                //                     Text(
                //                       "84 000 UZS",
                //                       style: Theme.of(context)
                //                           .textTheme
                //                           .bodyMedium!
                //                           .copyWith(
                //                         fontSize: 16,
                //                       ),
                //                     ),
                //                     const Spacer(),
                //                     const Gap(4),
                //                     Row(
                //                       children: [
                //                         Container(
                //                           padding: const EdgeInsets.all(8),
                //                           height:
                //                           MediaQuery.of(context).size.height /
                //                               100 *
                //                               4,
                //                           width: MediaQuery.of(context).size.width /
                //                               100 *
                //                               28,
                //                           decoration: BoxDecoration(
                //                             color: yellow,
                //                             borderRadius: BorderRadius.circular(6),
                //                           ),
                //                           child: Row(
                //                             children: [
                //                               SvgPicture.asset(AppIcons.savatcha),
                //                               Text(
                //                                 "Savatchaga",
                //                                 style: Theme.of(context)
                //                                     .textTheme
                //                                     .labelLarge!
                //                                     .copyWith(
                //                                   color: textBlack,
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ),
                //                         const Gap(10),
                //                         SvgPicture.asset(AppIcons.like),
                //                       ],
                //                     )
                //                   ],
                //                 ),
                //               ),
                //
                //             ],
                //           ),
                //         ),
                //
                //       ],
                //     )
                //   ],
                // ),
                // const Gap(20),
                // Container(
                //   alignment: Alignment.center,
                //   height: MediaQuery.of(context).size.height / 100 * 5.7,
                //   decoration: BoxDecoration(
                //     color: pinkish,
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Text(
                //         "Barchasini ko‘rish",
                //         style:
                //         Theme.of(context).textTheme.headlineSmall!.copyWith(
                //           color: yellow,
                //         ),
                //       ),
                //       const Gap(8),
                //       SvgPicture.asset(AppIcons.arrow),
                //     ],
                //   ),
                // ),
                // const Gap(20)
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
