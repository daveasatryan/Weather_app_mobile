part of 'get_data_bloc.dart';

@immutable
abstract class GetDataState extends Equatable {
  @override
  List<Object> get props => [];
}

class GetDataInitial extends GetDataState {}

class GetBlocLoadingState extends GetDataInitial {}

class GetBlocFetchSuccsesState extends GetDataInitial {
  CurrentModel currentModel;
  LocationModel locationModel;
  List<ForecastDayModel> forecastDayModelList = [];
  GetBlocFetchSuccsesState(
      {required this.currentModel,
      required this.forecastDayModelList,
      required this.locationModel});
}

class GetBlocErrorState extends GetDataInitial {
  String error;
  GetBlocErrorState({required this.error});
}
