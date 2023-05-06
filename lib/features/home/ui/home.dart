

import 'package:blocpattern/features/home/bloc/home_bloc.dart';
import 'package:blocpattern/features/home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
        listenWhen: (previous, current) {
          // return true/false to determine whether or not
          // to invoke listener with state
          return true;
        },
        listener: (context, state) {
          // do stuff here based on BlocA's state
        },
        buildWhen: (previous, current) {
          return true;
          // return true/false to determine whether or not
          // to rebuild the widget with state
        },
        builder: (context, state) {
          // return widget here based on BlocA's state
          return Scaffold(
            appBar: AppBar(
              title: Text('Grocery App'),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart),),
              ],
            ),
          );
        }
    );
  }
}
