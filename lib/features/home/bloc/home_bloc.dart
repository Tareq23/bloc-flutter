
import 'package:bloc/bloc.dart';
import 'package:blocpattern/data/grocery_data.dart';
import 'package:blocpattern/features/home/bloc/home_event.dart';
import 'package:blocpattern/features/home/bloc/home_state.dart';
import 'package:blocpattern/features/home/data_model/home_data_model.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  // HomeBloc(super.initialState);
  HomeBloc() : super(HomeInitial()){


    on<HomeInitialEvent>((HomeInitialEvent event, Emitter<HomeState>emmit) async{
      emmit(HomeLoadingState());

      await Future.delayed(Duration(seconds: 5));

      emmit(HomeLoadedSuccessState(products: GroceryData.products.map((e) =>
          ProductDataModel(id: e['id'], name: e['name'], description: e['description'], price: e['price'], category: e['category'], quantity: e['quantity'],
          imageUrl: e['image'])).toList()));
    });


    on<HomeProductWishlistNavigateEvent>((HomeProductWishlistNavigateEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> wishlist navigation click');
      emmit(HomeNavigateToWishlistPageActionState());
    });

    on<HomeProductWishlistButtonEvent>((HomeProductWishlistButtonEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> wishlist icon button click');
    });

    on<HomeProductCartNavigateEvent>((HomeProductCartNavigateEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> cart navigation click');
      emmit(HomeNavigateToCartPageActionState());
    });

    on<HomeProductCartButtonEvent>((HomeProductCartButtonEvent event, Emitter<HomeState> emmit){
      print('--------------------->>>> cart icon button click');
    });
  }
}