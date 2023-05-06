
import 'package:bloc/bloc.dart';
import 'package:blocpattern/features/home/bloc/home_event.dart';
import 'package:blocpattern/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  // HomeBloc(super.initialState);
  HomeBloc() : super(HomeInitial()){
    on<HomeEvent>((event, emit){

    });
  }
}