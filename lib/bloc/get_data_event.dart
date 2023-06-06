part of 'get_data_bloc.dart';

@immutable
abstract class GetDataEvent extends Equatable {
  const GetDataEvent();
  @override
  List<Object> get props => [];
}

class GetBlocEventInitial extends GetDataEvent {
  double lat;
  double long;
  GetBlocEventInitial({required this.lat, required this.long});
}
