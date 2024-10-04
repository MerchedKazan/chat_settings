import 'package:flutter_bloc/flutter_bloc.dart';

abstract class LimitCubit extends Cubit<int> {
  LimitCubit(super.initialState);

  void increment();
  void decrement();
  void update(int i);
}