part of 'timer_bloc.dart';

@immutable
sealed class TimerState {
  const TimerState(this.duration);
  final int duration;

  List<Object> get props => [duration];
}

///ready to start counting down from the specified duration.
final class TimerInitial extends TimerState {
  const TimerInitial(super.duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

/// actively counting down from the specified duration.
final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(super.duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

/// paused at some remaining duration.
final class TimerRunPause extends TimerState {
  const TimerRunPause(super.duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

/// completed with a remaining duration of 0.
final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
