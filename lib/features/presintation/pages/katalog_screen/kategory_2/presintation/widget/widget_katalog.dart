import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../../../../../../assets/colors/color.dart';
import '../../../../../../../assets/widgets/icons.dart';
import '../../data/katalog_model/model.dart';


class CategoryItem extends StatelessWidget {
  final CategoryModel2 category;
  const CategoryItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child:
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
                  category.img
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
                    category.name,style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Gap(2),
                  Text(
                    category.title,style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(
                    color: grey,
                  ),
                  ),
                  const Gap(2),
                  Text(
                    category.in_price,
                    style: TextStyle(fontSize: 12,color: Colors.red),

                  ),
                  const Gap(2),
                  Text(
                    category.price,
                    style: TextStyle(fontSize: 16),
                  ),
                  const Gap(1),
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
      // Container(
      //   width: 106,height: 106,
      //   padding: const EdgeInsets.only(top: 8,left: 10),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(16),
      //     color: const Color(0xFFF7F7F7),
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(category.name,style: const TextStyle(color: Colors.black,fontSize: 12),),
      //       const Spacer(),
      //       Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           children: [
      //             ClipRRect(
      //                 borderRadius: BorderRadius.circular(20),
      //                 child: Image.asset(category.img,width: 70,height: 70,))
      //           ]
      //       ),
      //     ],
      //   ),
      // ),

    );
  }
}