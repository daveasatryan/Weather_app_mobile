import 'package:flutter/material.dart';
import 'package:weather_app_mone/Constants/app_size_const.dart';
import 'package:weather_app_mone/Screens/Widgets/Days_Widgets/days_container_header_widget.dart';
import 'package:weather_app_mone/Screens/Widgets/Days_Widgets/days_container_widget_items.dart';
import 'package:weather_app_mone/bloc/get_data_bloc.dart';

Container widget_container_days(
    BuildContext context, GetBlocFetchSuccsesState state) {
  return Container(
    width: AppSizeConst(context).width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        widget_container_header("7 Days"),
        widget_container_days_items(context, state),
      ],
    ),
  );
}
