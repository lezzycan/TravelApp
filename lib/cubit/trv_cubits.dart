import 'package:bloc/bloc.dart';
import 'package:bloc_travel_app/cubit/trv_cubits_state.dart';
import 'package:bloc_travel_app/model/trv_model.dart';
import 'package:bloc_travel_app/services/trv_data_service.dart';

class TrvCubits extends Cubit<CubitState> {
  TrvCubits({required this.dataService}) : super(InitialStates()) {
    emit(WelcomeStates());
  }
  final DataService dataService;
  late final places;
  void getData() async {
    try {
      emit(LoadingStates());
      places = await dataService.getInfo();
      emit(LoadedStates(places));
    } catch (e) {}
  }

  void detailPage(TravelModel data) {
    emit(DetailStates(data));
  }

  goHome() {
    emit(LoadedStates(places));
  }
}
