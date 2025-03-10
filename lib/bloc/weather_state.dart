part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();
  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherBlocInitial extends WeatherState {}

final class WeatherBlocLoading extends WeatherState {}

final class WeatherBlocSuccess extends WeatherState {
  final WeatherModel weather;
  const WeatherBlocSuccess(this.weather);
  @override
  List<Object> get props => [weather];
}

final class WeatherBlocFailure extends WeatherState {}
