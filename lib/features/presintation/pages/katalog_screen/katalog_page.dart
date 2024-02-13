import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../assets/colors/color.dart';
import '../../../../assets/widgets/icons.dart';
import '../../../../assets/widgets/images.dart';
import 'appbar_katalog/appbar.dart';
import 'category/data/model/status.dart';
import 'category/presentation/bloc/category_bloc.dart';
import 'category/presentation/widgets/category_item.dart';


class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Expanded(
        child: ListView(
          children: [
            Container(height: 106 * 8 + 8 * 14,
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  switch (state.status) {
                    case LoadingStatus.pure:
                      context.read<CategoryBloc>().add(LoadingCategory());
                      return const SizedBox();
                    case LoadingStatus.loading:
                      return const CupertinoActivityIndicator();
                    case LoadingStatus.loadedWithSuccess:
                      return state.isSearching
                          ? GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                        ),
                        itemCount: state.searchedCategory.length,
                        itemBuilder: (context, index) {
                          return CategoryItem(
                            category: state.searchedCategory[index],
                          );
                        },
                      )
                          : GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                        ),
                        itemCount: state.categoryList.length,
                        itemBuilder: (context, index) {
                          return CategoryItem(
                            category: state.categoryList[index],
                          );
                        },
                      );
                    case LoadingStatus.loadedWithFailure:
                      return Container(
                        color: Colors.blueAccent,
                        width: 300,
                        height: 300,
                      );
                    default:
                      return Container(
                        color: Colors.red,
                        width: 300,
                        height: 300,
                      );
                  }
                },
              ),
            ),


            Text(
              'Ushbu takliflarga e’tibor qarating',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(20),

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
            const Gap(20),
        ]
        ),
      ),
    );
  }
}


