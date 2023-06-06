import 'package:flutter/material.dart';
import 'package:weather_app_mone/Constants/app_icons_const.dart';
import 'package:weather_app_mone/Constants/app_size_const.dart';
import 'package:weather_app_mone/Models/LocationModel/location_model.dart';

import '../../../Constants/app_colors.dart';

AppBar app_bar_Widget(
    {required BuildContext context, required LocationModel locationModel}) {
  return AppBar(
    elevation: 0,
    backgroundColor: AppColors.mainColor,
    toolbarHeight: 120,
    centerTitle: true,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppIcons.location_icon,
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width: AppSizeConst(context).width / 1.7,
          child: Text(
            "${locationModel.country}/${locationModel.name}",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: AppColors.whiteTextColor,
              fontSize: 25,
              letterSpacing: 2.0,
              fontFamily: "Rubik",
            ),
          ),
        ),
        AppIcons.under_icon,
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert),
      ),
    ],
  );
}
