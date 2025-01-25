part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CountValueChanged extends CounterState{
   final int counter ;

  CountValueChanged(this.counter);
}
