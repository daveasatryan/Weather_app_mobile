import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_mone/Constants/app_colors.dart';
import 'package:weather_app_mone/Screens/Widgets/Days_Widgets/days_item_widget.dart';
import 'package:weather_app_mone/bloc/get_data_bloc.dart';

Container widget_container_days_items(
    BuildContext context, GetBlocFetchSuccsesState state) {
  final _scrollController = ScrollController();

  return Container(
      height: 150,
      child: Theme(
        data: Theme.of(context).copyWith(
            scrollbarTheme: ScrollbarThemeData(
          trackColor: MaterialStateProperty.all(AppColors.darkTextColor),
          trackBorderColor: MaterialStateProperty.all(AppColors.darkTextColor),
          thumbColor: MaterialStateProperty.all(AppColors.scrollColor),
        )),
        child: Scrollbar(
          isAlwaysShown: true,
          showTrackOnHover: true,
          controller: _scrollController,
          scrollbarOrientation: ScrollbarOrientation.bottom,
          child: ListView.builder(
            controller: _scrollController,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: state.forecastDayModelList.length,
            itemBuilder: (context, index) {
              return days_item_widget(
                  index: index, forecastDayList: state.forecastDayModelList);
            },
          ),
        ),
      ));
}
