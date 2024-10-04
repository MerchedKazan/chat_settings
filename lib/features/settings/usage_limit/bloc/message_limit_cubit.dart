import 'package:flutter_bloc/flutter_bloc.dart';

import 'limit_cubit.dart';

class MessageLimitCubit extends LimitCubit{
  final int limit;
  MessageLimitCubit(this.limit):super(limit);
  void increment()=>emit(state+1);
  void decrement()=>emit(state!=0?state-1:0);
  void update(int i)=>emit(i);
}