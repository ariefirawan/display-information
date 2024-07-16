part of 'prayer_bloc.dart';

sealed class PrayerEvent extends Equatable {
  const PrayerEvent();

  @override
  List<Object> get props => [];
}

class InitializePrayerTimes extends PrayerEvent {}

class UpdatePrayerTimes extends PrayerEvent {}
