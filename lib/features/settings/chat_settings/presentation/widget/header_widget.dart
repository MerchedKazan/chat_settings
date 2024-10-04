import 'package:chat_settings/design/colors.dart';
import 'package:chat_settings/design/theme.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration:const BoxDecoration(
            color: CustomColors.greyColor,
            borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            padding:const EdgeInsets.symmetric(horizontal: 12,vertical: 20),
            child: Text("These settings are applied daily to your public chats for your AI Twin.",textAlign: TextAlign.center,style: CustomTextStyle.heading5StyleRegular(),),
          ),
          Positioned(
            top: -15,
            left: 0,
            right: 0,
            child: Container(
              height: 36,
              width: 36,
              padding:const EdgeInsets.all(6),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                shape: BoxShape.circle,
                color: CustomColors.greyColor
              ),
              child:const Icon(Icons.light_mode_outlined,size: 20,color: Colors.orange,)))
        ],
      ),
    );
  }
}