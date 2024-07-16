part of 'prayer_bloc.dart';

class PrayerState extends Equatable {
  final String countdownText;
  final String nextPrayerName;

  const PrayerState({
    this.countdownText = '',
    this.nextPrayerName = '',
  });

  factory PrayerState.initial() {
    return const PrayerState();
  }

  PrayerState copyWith({
    String? countdownText,
    String? nextPrayerName,
  }) {
    return PrayerState(
      countdownText: countdownText ?? this.countdownText,
      nextPrayerName: nextPrayerName ?? this.nextPrayerName,
    );
  }

  @override
  List<Object> get props => [countdownText, nextPrayerName];
}
