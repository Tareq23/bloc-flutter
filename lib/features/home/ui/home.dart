import 'package:blocpattern/features/cart/ui/cart.dart';
import 'package:blocpattern/features/home/bloc/home_bloc.dart';
import 'package:blocpattern/features/home/bloc/home_event.dart';
import 'package:blocpattern/features/home/bloc/home_state.dart';
import 'package:blocpattern/features/home/ui/widget/home_product_list_tile_widget.dart';
import 'package:blocpattern/features/wishlist/ui/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final HomeBloc homeBloc = HomeBloc();


  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        listenWhen: (previous, current) => current is HomeActionState,
        buildWhen: (previous, current) => current is! HomeActionState,
        listener: (context, state) {
          if (state is HomeNavigateToWishlistPageActionState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Wishlist()));
          } else if (state is HomeNavigateToCartPageActionState) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart()));
          } else {
            print('----------------> state not matching');
          }
        },
        builder: (context, state) {
          // return widget here based on BlocA's state
          switch (state.runtimeType) {
            case HomeLoadingState:
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
              break;
            case HomeLoadedSuccessState:
              final successState = state as HomeLoadedSuccessState;
              return Scaffold(
                appBar: AppBar(
                  title: Text('Grocery App'),
                  actions: [
                    IconButton(
                      onPressed: () {
                        print('wish list ------------------------');
                        homeBloc.add(HomeProductWishlistNavigateEvent());
                      },
                      icon: Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () {
                        homeBloc.add(HomeProductCartNavigateEvent());
                      },
                      icon: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
                body: ListView.builder(
                  itemCount: successState.products.length,
                  itemBuilder: (context,index){
                    return HomeProductListTileWidget(product: successState.products[index]);
                  },
                ),
              );
              break;
            case HomeErrorState:
              return Scaffold(
                body: Center(
                  child: Text('Error....'),
                ),
              );
              break;
            default:
              return Scaffold(
                body: Center(
                  child: Text('Default....'),
                ),
              );
          }
        });
  }
}
