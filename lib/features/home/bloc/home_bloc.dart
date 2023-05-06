
import 'package:bloc/bloc.dart';
import 'package:blocpattern/features/home/bloc/home_event.dart';
import 'package:blocpattern/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  // HomeBloc(super.initialState);
  HomeBloc() : super(HomeInitial()){
    on<HomeProductWishlistNavigateEvent>((HomeProductWishlistNavigateEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> wishlist navigation click');
    });

    on<HomeProductWishlistButtonEvent>((HomeProductWishlistButtonEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> wishlist icon button click');
    });

    on<HomeProductCartNavigateEvent>((HomeProductCartNavigateEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> cart navigation click');
    });

    on<HomeProductCartButtonEvent>((HomeProductCartButtonEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> cart icon button click');
    });
  }
}