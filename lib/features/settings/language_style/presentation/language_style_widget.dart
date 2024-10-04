import 'package:chat_settings/design/colors.dart';
import 'package:chat_settings/design/gap.dart';
import 'package:chat_settings/design/theme.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_event_language_event.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_language_style.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_state_language_style.dart';
import 'package:chat_settings/custom_widgets/custom_bloc_builder.dart';
import 'package:chat_settings/features/settings/language_style/bloc/selected_id/select_id_language_style_cubit.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageStyleWidget extends StatelessWidget {
  const LanguageStyleWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    
    return CustomBlocBuilder(bloc:
    getIt<LangaugeStyleBloc>()..add(LoadLanguageStyle()),
      isLoading: (state)=> state is LanguageStyleLoading, 
      isError:(state)=> state is LanguageStyleError,
     builder: (context,state){
      if(state is LanguageStyleLoaded){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Text("Language Settings",style: CustomTextStyle.heading1StyleBold(),),
                gapH12,
            Container(
              padding: const EdgeInsets.all(20),
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Language Style",style: CustomTextStyle.heading2StyleMedium(),),
                gapH12,
                Text("Choose how you want your AI Twin to communicate.",style: CustomTextStyle.heading4StyleRegular().copyWith(color: CustomColors.secondaryTextColor),),
                gapH12,
                  BlocBuilder<SelectLanguageStyleCubit,String>(
                    bloc:getIt<SelectLanguageStyleCubit>().update((getIt<ChatSettingsBloc>().chatSettingsModel.languageSettings?.languageStyleSettings?.languageStyleId??"")),
                    builder: (context,statee) {
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              getIt<SelectLanguageStyleCubit>().update(state.languagesStyle[index].id);
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: AbsorbPointer(
                                      absorbing: true,
                                      child: Radio(
                                        toggleable: true,
                                        activeColor: CustomColors.pinkColor,
                                        value: state.languagesStyle[index].id,
                                         groupValue: statee, onChanged: (val){
                                      }),
                                    ),
                                  ),
                                  gapW12,
                                  Text(state.languagesStyle[index].name),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: state.languagesStyle.length,
                      );
                    }
                  ),
                ],
              ),
            ),
          ],
        );
      }
      return const Text("No data available");
     },
      
      );
  }
}


