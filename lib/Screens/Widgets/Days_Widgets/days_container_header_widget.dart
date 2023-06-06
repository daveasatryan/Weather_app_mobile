
  import 'package:flutter/material.dart';
import 'package:weather_app_mone/Constants/app_colors.dart';
import 'package:weather_app_mone/Constants/app_icons_const.dart';

Padding widget_container_header(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.0,
              fontFamily: "Rubik",
              color: AppColors.darkTextColor,
            ),
          ),
          AppIcons.right_icon
        ],
      ),
    );
  }