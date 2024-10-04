import 'package:chat_settings/design/colors.dart';
import 'package:chat_settings/design/gap.dart';
import 'package:chat_settings/design/theme.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc_state.dart';
import 'package:chat_settings/features/settings/usage_limit/bloc/calls_limit_cubit.dart';
import 'package:chat_settings/features/settings/usage_limit/bloc/message_limit_cubit.dart';
import 'package:chat_settings/helper/integration_key.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/limit_cubit.dart';

class UsageLimitWidget extends StatelessWidget {
  const UsageLimitWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    final chatSettings=BlocProvider.of<ChatSettingsBloc>(context,listen: false);
    return Column(
      key: const Key(IntegrationKey.limitWidget),
      children: [
        Text("Usage Limits",style: CustomTextStyle.heading1StyleBold(),),
        gapH12,
        CustomLimitsContainer(
          cubit:getIt<MessageLimitCubit>()..update(chatSettings.chatSettingsModel.usageLimitSettings?.chatMessagePerMonthPerUser??0 ),
         title: "Chat Limits", unit: "Messages", description: "When using your link to chat with your AI Twin, each user will have a maximum of the following amount of messages per session for their conversation"),
        gapH12,
        CustomLimitsContainer(
          cubit:getIt<CallsLimitCubit>()..update(chatSettings.chatSettingsModel.usageLimitSettings?.callMinutesPerMonthPerUser??0),
           title: "Call Limits", unit: "Minutes", description: "When using your link to chat with your AI Twin, each user will have a maximum of the following amount of minutes per session for their call"),
           
      ],
    );
  }
}


class CustomLimitsContainer extends StatefulWidget {
  const CustomLimitsContainer({super.key,
  required this.cubit,
  required this.title, required this.unit, required this.description});
  final LimitCubit cubit;
  final String title,unit,description;
  @override
  State<CustomLimitsContainer> createState() => _CustomLimitsContainerState();
}

class _CustomLimitsContainerState extends State<CustomLimitsContainer> {
   

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: widget.cubit,
      builder: (context,currentValue) {
        return Container(
          padding: const EdgeInsets.all(20),
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,style: CustomTextStyle.heading3StyleSemiBold(),),
                  gapH12,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$currentValue ${widget.unit}",style: CustomTextStyle.heading1StyleSemiBold().copyWith(color: CustomColors.pinkColor),),
                      Text("Monthly/User",style:CustomTextStyle.heading3StyleRegular().copyWith(color: CustomColors.secondaryTextColor) ,)
                    ],
                  ),
                  gapH12,
                  Text(widget.description,style: CustomTextStyle.heading5StyleRegular().copyWith(color:CustomColors.secondaryTextColor),),
                  gapH12,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    GestureDetector(
                      onTap:()=> widget.cubit.decrement(),
                      child: const Icon(Icons.remove),
                    ),
                    gapW16,
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration:const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: CustomColors.primaryColor
                        ),
                        child: Center(child: Text("$currentValue",style: CustomTextStyle.heading2StyleMedium(),)),
                      ),
                    ),
                    gapW16,
                    GestureDetector(
                      onTap: ()=>widget.cubit.increment(),
                      child:const  Icon(Icons.add),
                    )
                  ],)
        
                ],
              ),
        );
      }
    );
  }
}