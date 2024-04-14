import 'package:bloc/bloc.dart';
import 'package:counter/app.dart';
import 'package:counter/counter_observer.dart';
import 'package:flutter/widgets.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(const CounterApp());
}
