part of 'katalog_bloc.dart';

sealed class CategoryEvent {}


class LoadingCategory extends CategoryEvent {}


class Searching extends CategoryEvent {
  final String query;

  Searching({required this.query});
}