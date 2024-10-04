import 'package:flutter_bloc/flutter_bloc.dart';

class SelectLanguageStyleCubit extends Cubit<String>{
  final String id;
  SelectLanguageStyleCubit(this.id):super(id);
  update(String id){
    emit(id);
  }
}