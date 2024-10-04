import 'package:chat_settings/design/colors.dart';
import 'package:chat_settings/design/gap.dart';
import 'package:chat_settings/design/theme.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_event_conversation_depth.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_conversation_depth.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_state_conversation_depth.dart';
import 'package:chat_settings/custom_widgets/custom_bloc_builder.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/selected_id/select_id_conversation_depth_cubit.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversationDepthWidget extends StatelessWidget {
  const ConversationDepthWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    
    return CustomBlocBuilder(bloc:
    getIt<ConversationDepthBloc>()..add(LoadConversationDepth()),
      isLoading: (state)=> state is ConversationDepthLoading, 
      isError:(state)=> state is ConversationDepthError,
     builder: (context,state){
      if(state is ConversationDepthLoaded){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Conversation Depth",style: CustomTextStyle.heading2StyleMedium(),),
                gapH12,
                Text("Choose how complex the conversations with your AI twin should be  ",style: CustomTextStyle.heading4StyleRegular().copyWith(color: CustomColors.secondaryTextColor),),
                gapH12,
                  BlocBuilder<SelectConversationDepthIdCubit,String>(
                    bloc:getIt<SelectConversationDepthIdCubit>().update((getIt<ChatSettingsBloc>().chatSettingsModel.twinControlSettings?.conversationDepthSettings?.conversationDepthId??"")),
                    builder: (context,statee) {
                      return ListView.builder(
                         physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return InkWell(
                            onTap: (){
                              getIt<SelectConversationDepthIdCubit>().update(state.conversationDepth[index].id);
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
                                        value: state.conversationDepth[index].id,
                                         groupValue: statee, onChanged: (val){
                                      }),
                                    ),
                                  ),
                                  gapW12,
                                  Text(state.conversationDepth[index].name),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: state.conversationDepth.length,
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


