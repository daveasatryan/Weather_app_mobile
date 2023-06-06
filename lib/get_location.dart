import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_mone/bloc/get_data_bloc.dart';

Position? _currentPosition;
var blocGetData;
Future<bool> _handleLocationPermission({required BuildContext context}) async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
            'Location services are disabled. Please enable the services')));
    return false;
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Location permissions are denied')));
      return false;
    }
  }
  if (permission == LocationPermission.deniedForever) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
            'Location permissions are permanently denied, we cannot request permissions.')));
    return false;
  }
  return true;
}

Future<void> getCurrentPosition({required BuildContext context}) async {
  final hasPermission = await _handleLocationPermission(context: context);

  if (!hasPermission) return;
  await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low)
      .then((Position position) async {
    _currentPosition = position;
    blocGetData = BlocProvider.of<GetDataBloc>(context);
    blocGetData.add(GetBlocEventInitial(
        lat: _currentPosition!.latitude, long: _currentPosition!.longitude));
  }).catchError((e) {
    debugPrint(e);
  });
}
