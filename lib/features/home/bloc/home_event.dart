import 'package:flutter/foundation.dart';

@immutable
abstract class HomeEvent{}


class HomeInitialEvent extends HomeEvent{}

class HomeProductWishlistButtonEvent extends HomeEvent{}

class HomeProductCartButtonEvent extends HomeEvent{}

class HomeProductWishlistNavigateEvent extends HomeEvent{}

class HomeProductCartNavigateEvent extends HomeEvent{}