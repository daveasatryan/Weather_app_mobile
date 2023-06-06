import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app_mone/Constants/app_colors.dart';
import 'package:weather_app_mone/Models/ForecastDayModel/forecast_day_model.dart';
import 'package:weather_app_mone/main.dart';

Padding days_item_widget(
    {required int index, required List<ForecastDayModel> forecastDayList}) {
  String day = DateFormat('dd').format(forecastDayList[index].date!);
  String month = DateFormat('MMMM').format(forecastDayList[index].date!);

  return Padding(
    padding: const EdgeInsets.only(left: 25, bottom: 50),
    child: Container(
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            offset: const Offset(0, 5),
            blurRadius: 25.0,
            color: AppColors.cloudyColor,
          ),
          BoxShadow(
            offset: const Offset(-5, 0),
            //blurRadius: 5.0,
            color: AppColors.mainColor!,
          ),
          BoxShadow(
            offset: const Offset(5, 0),
            //blurRadius: 5.0,
            color: AppColors.mainColor!,
          ),
        ],
      ),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "$day ${month.substring(1, 4)}",
              style: const TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 10,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500),
            ),
            Image.network(
              fit: BoxFit.contain,
              "https:${forecastDayList[index].hour![index].condition!.icon}",
              width: 40,
              height: 40,
            ),
            Text(
              '${forecastDayList[index].hour![index].temp_c}°C',
              style: const TextStyle(
                  color: AppColors.whiteTextColor,
                  fontSize: 10,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500),
            ),
          ]),
    ),
  );
}
