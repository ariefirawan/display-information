import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:myapp/models/models.dart';

part 'prayer_event.dart';
part 'prayer_state.dart';

class PrayerBloc extends Bloc<PrayerEvent, PrayerState> {
  final PrayerTimesManager prayerTimesManager;
  Timer? _timer;

  PrayerBloc({required this.prayerTimesManager})
      : super(const PrayerState(countdownText: '', nextPrayerName: '')) {
    on<InitializePrayerTimes>((event, emit) {
      final nextPrayer = prayerTimesManager.getNextPrayerTime();

      emit(state.copyWith(
        nextPrayerName: nextPrayer.name,
        countdownText: prayerTimesManager
            .formatDuration(nextPrayer.time.difference(DateTime.now())),
      ));

      _startCountdown();
    });
    on<UpdatePrayerTimes>((event, emit) {
      final now = DateTime.now();
      final nextPrayer = prayerTimesManager.getNextPrayerTime();
      final difference = nextPrayer.time.difference(now);

      if (difference.isNegative) {
        add(InitializePrayerTimes());
      } else {
        emit(state.copyWith(
          countdownText: prayerTimesManager.formatDuration(difference),
          nextPrayerName: nextPrayer.name,
        ));
      }
    });
  }

  void _startCountdown() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(UpdatePrayerTimes());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
