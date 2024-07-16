part of 'calender_bloc.dart';

class CalenderState extends Equatable {
  final Status status;
  final String? error;
  final List<CalenderEventModel> calendar;

  const CalenderState({
    this.status = Status.initial,
    this.error,
    this.calendar = const [],
  });

  factory CalenderState.initial() => const CalenderState();

  CalenderState copyWith({
    Status? status,
    String? error,
    List<CalenderEventModel>? calendar,
  }) {
    return CalenderState(
      status: status ?? this.status,
      error: error ?? this.error,
      calendar: calendar ?? this.calendar,
    );
  }

  @override
  List<Object?> get props => [status, error, calendar];
}
