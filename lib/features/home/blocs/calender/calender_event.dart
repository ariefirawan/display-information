part of 'calender_bloc.dart';

sealed class CalenderEvent extends Equatable {
  const CalenderEvent();

  @override
  List<Object> get props => [];
}

class GetCalenderEvent extends CalenderEvent {}
