import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/api.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/models/models.dart';

part 'calender_event.dart';
part 'calender_state.dart';

class CalenderBloc extends Bloc<CalenderEvent, CalenderState> {
  Timer? _timer;

  CalenderBloc() : super(CalenderState.initial()) {
    on<GetCalenderEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: Status.initial));

        final response = await ApiService.getEvents();

        emit(state.copyWith(calendar: response, status: Status.success));
      } catch (e) {
        emit(state.copyWith(status: Status.failure));
      }
    });

    // Memulai timer saat BLoC diinisialisasi
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(minutes: 30), (timer) {
      add(GetCalenderEvent());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
