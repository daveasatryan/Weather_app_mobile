import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app_mone/Constants/app_colors.dart';
import 'package:weather_app_mone/Constants/app_size_const.dart';
import 'package:weather_app_mone/Models/CurrentModel/current_model.dart';

Container top_container_Widget(
    {required BuildContext context, required CurrentModel currentModel}) {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  DateTime date = DateTime.now();
  String dateFormat = DateFormat('EEEE').format(date);
  String formatedDate = DateFormat('dd/MM/yyyy')
      .format(DateTime.parse(currentModel.last_updated!));
  return Container(
    width: AppSizeConst(context).width,
    decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: const BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(30), bottomStart: Radius.circular(30))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
            child: Container(
          alignment: Alignment.topCenter,
          width: AppSizeConst(context).width / 1.5,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GradientText(
                  '${currentModel.temp_c}°C',
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 50.0,
                    fontFamily: "Rubik",
                  ),
                  gradientDirection: GradientDirection.btt,
                  colors: [
                    AppColors.mainColor!,
                    AppColors.whiteTextColor,
                    AppColors.whiteTextColor,
                  ],
                ),
                Image.network(
                  fit: BoxFit.contain,
                  "https:${currentModel.condition!.icon!}",
                  width: 200,
                  height: 200,
                ),
                Text(
                  "${currentModel.condition!.text!}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      letterSpacing: 3.0,
                      fontFamily: "Rubik",
                      color: AppColors.whiteTextColor,
                      fontSize: 20),
                ),
                const SizedBox(
                  width: 35,
                ),
              ]),
        )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(dateFormat,
                      style: const TextStyle(
                        fontSize: 18,
                        color: AppColors.whiteTextColor,
                        letterSpacing: 1.0,
                        fontFamily: "Rubik",
                      )),
                  Text(formatedDate,
                      style: const TextStyle(
                        fontSize: 18,
                        color: AppColors.whiteTextColor,
                        letterSpacing: 1.0,
                        fontFamily: "Rubik",
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SmoothPageIndicator(
                count: 3,
                axisDirection: Axis.horizontal,
                effect: const SlideEffect(
                    spacing: 5.0,
                    radius: 10.0,
                    dotWidth: 8.0,
                    dotHeight: 8.0,
                    offset: 20.0,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 0.6,
                    dotColor: AppColors.backgroundColor,
                    activeDotColor: AppColors.backgroundColor),
                controller: controller,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
