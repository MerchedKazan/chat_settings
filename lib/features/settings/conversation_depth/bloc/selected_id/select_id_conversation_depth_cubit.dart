import 'package:flutter_bloc/flutter_bloc.dart';

class SelectConversationDepthIdCubit extends Cubit<String>{
  final String id;
  SelectConversationDepthIdCubit(this.id):super(id);
  update(String id){
    emit(id);
  }
}