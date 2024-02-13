import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import '../../data/katalog_model/status/status.dart';
import '../../data/repository/repository.dart';
import 'package:flutter/foundation.dart';

import '../../data/katalog_model/model.dart';
import '../../data/katalog_model/status/status.dart';




part 'katalog_state.dart';
part 'katalog_event.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRepository _response;
  CategoryBloc({required CategoryRepository response})
      : _response = response,
        super(CategoryState(
        searchedCategory: [],
        isSearching: false,
        status: LoadingStatus.pure,
        categoryList: [],)) {
    on<LoadingCategory>((event, emit) async {
      emit(state.copyWith(status: LoadingStatus.loading));
      try {
        List<CategoryModel2> ls = await _response.getCategory();

        emit(
          state.copyWith(
            categoryList: ls,
            status: LoadingStatus.loadedWithSuccess,
          ),
        );
      } catch (e) {
        addError(e);
        print(e);
        emit(state.copyWith(status: LoadingStatus.loadedWithFailure));
      }
    });


    on<Searching>((event, emit) {
      if (event.query.isEmpty) {
        emit(state.copyWith(isSearching: false));
      } else {
        final newList = state.categoryList
            .where((element) => element.name.contains(event.query))
            .toList();
        emit(state.copyWith(searchedCategory: newList, isSearching: true));
      }
    });
  }
}
