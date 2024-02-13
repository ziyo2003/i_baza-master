

import '../data_source/katalog_mock_data.dart';
import '../katalog_model/model.dart';

class CategoryRepository {
  Future<List<CategoryModel2>> getCategory()async {
    Future.delayed(const Duration(seconds: 3));

    return (categoryData['category']as List).map((e) => CategoryModel2.fromJson(e)).toList();

  }

  Future<CategoryModel2> createCategory({
    required String img,
    required String name,
    required String title,
    required String in_price,
    required String price,
  }) async {

    await Future.delayed(const Duration(seconds: 3),);

    if (name.isEmpty || name.length < 3) {
      throw Exception('Type is invalid');
    }
    final newCategory = CategoryModel2(
      id: (categoryData['category'] as List).lastOrNull['id'] + 1 ?? 0,
      name: '',
      img: img,
      title: '',
      in_price: '',
      price: '',

    );

    categoryData['category'].add(
      {
        "id": newCategory.id,
        "img": newCategory.img,
        "name": newCategory.name,
        "title": newCategory.title,
        "in_price": newCategory.in_price,
        "price": newCategory.price,
      },

    );

    return newCategory;
  }


}