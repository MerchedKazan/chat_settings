import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_event_language_event.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_state_language_style.dart';
import 'package:chat_settings/features/settings/language_style/data/langauge_style_service.dart';
import 'package:chat_settings/features/settings/language_style/domain/language_style_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../chat_settings/data/chat_setting_service.dart';

class LangaugeStyleBloc extends Bloc<LanguageStyleEvent,LanguageStyleState>{
    final LanguageStyleSerivce apiService;
    LangaugeStyleBloc(this.apiService):super(LanguageStyleInitial()){
      on<LoadLanguageStyle>(_onLoadGetAllLanguageStyle);
      on<AddLanguageStyle>(_onAddLanguageStyle);
    }

    void _onLoadGetAllLanguageStyle(LoadLanguageStyle event,Emitter<LanguageStyleState> emit)async{
      emit(LanguageStyleLoading());
      try{
        var data=await apiService.getAllLanguageStyle();
        List<LangaugeStyleModel> languagesStyle=List.from(data.map((e)=>LangaugeStyleModel.fromJson(e)));
        emit(LanguageStyleLoaded(languagesStyle));
      }catch(e){
        emit(LanguageStyleError(e.toString()));
      }
    }
    void _onAddLanguageStyle(AddLanguageStyle event,Emitter<LanguageStyleState> emit)async{
      emit(LanguageStyleLoading());
      try{
        var data=await apiService.addLanguageStyle(event.language);
        LangaugeStyleModel languagesStyle=LangaugeStyleModel.fromJson(data);
        emit(LanguageStyleLoaded([languagesStyle]));
      }catch(e){
        emit(LanguageStyleError(e.toString()));
      }
    }
}