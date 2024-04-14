part of 'timer_bloc.dart';

@immutable
sealed class TimerEvent {
  const TimerEvent();
}

/// informs the TimerBloc that the timer should be started.
class TimerStarted extends TimerEvent {
  const TimerStarted({required this.duration});
  final int duration;
}

/// informs the TimerBloc that the timer should be paused.
final class TimerPaused extends TimerEvent {
  const TimerPaused();
}

/// informs the TimerBloc that the timer should be resumed.
final class TimerResumed extends TimerEvent {
  const TimerResumed();
}

/// informs the TimerBloc that the timer should be reset to the original state.
class TimerReset extends TimerEvent {
  const TimerReset();
}

/// informs the TimerBloc that a tick has occurred and that it needs to update its state accordingly.
class _TimerTicked extends TimerEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}
