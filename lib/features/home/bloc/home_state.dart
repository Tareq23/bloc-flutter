
import 'package:blocpattern/features/home/data_model/home_data_model.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class HomeState{}

abstract class HomeActionState extends HomeState{}

class HomeInitial extends HomeState{}

class HomeLoadingState extends HomeState{}

class HomeLoadedSuccessState extends HomeState{
  final List<ProductDataModel> products;

  HomeLoadedSuccessState({required this.products});
}

class HomeErrorState extends HomeState{}

class HomeNavigateToWishlistPageActionState extends HomeActionState{}

class HomeNavigateToCartPageActionState extends HomeActionState{}