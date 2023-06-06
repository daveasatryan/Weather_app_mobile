import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_mone/Models/CurrentModel/current_model.dart';
import 'package:weather_app_mone/Models/ForecastDayModel/forecast_day_model.dart';
import 'package:weather_app_mone/Models/LocationModel/location_model.dart';
import 'package:weather_app_mone/Repository/repository.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  GetDataBloc() : super(GetDataInitial()) {
    List<ForecastDayModel> forecastDayList = [];
    CurrentModel? currentModel;
    LocationModel? locationModel;

    on<GetDataEvent>((event, emit) async {
      if (event is GetBlocEventInitial) {
        emit(GetBlocLoadingState());
        try {
          print(event.lat);
          print(event.long);
          await Repository.getData(lat: event.lat, long: event.long).then(
            (value) async {
              forecastDayList.addAll(value.forecast!.forecastday!);
              currentModel = value.current!;
              locationModel = value.location!;
              print(currentModel);
            },
          );

          emit(GetBlocFetchSuccsesState(
              currentModel: currentModel!,
              forecastDayModelList: forecastDayList,
              locationModel: locationModel!));
        } catch (e) {
          emit(GetBlocErrorState(error: e.toString()));
        }
      }
    });
  }
}
