import 'package:bloc_travel_app/model/trv_model.dart';
import 'package:equatable/equatable.dart';

abstract class CubitState extends Equatable {}

class InitialStates extends CubitState {
  @override
  List<Object?> get props => [];
}

class WelcomeStates extends CubitState {
  @override
  List<Object?> get props => [];
}

class LoadingStates extends CubitState {
  @override
  List<Object?> get props => [];
}

class LoadedStates extends CubitState {
  final List<TravelModel> places;
  LoadedStates(this.places);
  
  @override
  List<Object?> get props => [places];
}

class DetailStates extends CubitState {
  final TravelModel data;
  DetailStates(this.data);
  
  @override
  List<Object?> get props => [data];
}