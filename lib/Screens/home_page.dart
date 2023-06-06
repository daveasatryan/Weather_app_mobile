import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_mone/Constants/app_colors.dart';
import 'package:weather_app_mone/Constants/app_size_const.dart';
import 'package:weather_app_mone/Constants/loading.dart';
import 'package:weather_app_mone/Screens/Widgets/AppBar_Widget/app_bar_widget.dart';
import 'package:weather_app_mone/Screens/Widgets/Days_Widgets/days_container_header_widget.dart';
import 'package:weather_app_mone/Screens/Widgets/Top_Widget/top_container_widget.dart';
import 'package:weather_app_mone/Screens/Widgets/Days_Widgets/days_container_widget_items.dart';
import 'package:weather_app_mone/Screens/Widgets/Days_Widgets/widget_container_days.dart';
import 'package:weather_app_mone/bloc/get_data_bloc.dart';
import 'package:weather_app_mone/get_location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getCurrentPosition(context: context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDataBloc, GetDataState>(
      builder: (context, state) {
        if (state is GetBlocLoadingState) {
          //Loading state
          return const MyLoading();
        } else if (state is GetBlocErrorState) {
          //Error state
          return const MyLoading();
        } else if (state is GetBlocFetchSuccsesState) {
          // Succses state
          AppColors.mainColor = state.currentModel.condition!.text!
                  .contains("cloudy")
              ? AppColors.cloudyColor
              : state.currentModel.condition!.text!.contains("Sunny")
                  ? AppColors.sunnyColor
                  : state.currentModel.condition!.text!.contains("snow")
                      ? AppColors.snowyColor
                      : state.currentModel.condition!.text!.contains("clear")
                          ? AppColors.nightColor
                          : AppColors.cloudyColor;

          return Scaffold(
            backgroundColor: AppColors.backgroundColor,
            //appbar widget
            appBar: app_bar_Widget(
                context: context, locationModel: state.locationModel),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Top container widget
                  Expanded(
                    flex: 2,
                    child: top_container_Widget(
                        context: context, currentModel: state.currentModel),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  //Days container widget
                  Expanded(
                    flex: 1,
                    child: widget_container_days(context, state),
                  ),
                ]),
          );
        }
        return const MyLoading();
      },
    );
  }
}
