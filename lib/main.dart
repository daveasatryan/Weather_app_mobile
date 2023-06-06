import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_mone/Constants/requests.dart';
import 'package:weather_app_mone/Repository/dio_options.dart';
import 'package:weather_app_mone/Screens/home_page.dart';
import 'package:weather_app_mone/bloc/get_data_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dio = Dio(
    BaseOptions(
      baseUrl: Requests.baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 100000,
      contentType: Headers.jsonContentType,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Task',
      debugShowCheckedModeBanner: false,
      home: BlocProvider<GetDataBloc>(
        create: (context) => GetDataBloc(),
        child: const HomePage(),
      ),
    );
  }
}
