import 'package:flutter/foundation.dart';

@immutable
abstract class HomeEvent{}

class HomeProductWishlistButtonEvent extends HomeEvent{}

class HomeProductCartButtonEvent extends HomeEvent{}

class HomeProductNavigateEvent extends HomeEvent{}

class HomeCartNavigateEvent extends HomeEvent{}