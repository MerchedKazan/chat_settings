import 'package:chat_settings/features/authentication/presentation/auth_widget.dart';
import 'package:chat_settings/features/connectivity/bloc/connectivity_bloc.dart';
import 'package:chat_settings/features/connectivity/bloc/connectivity_state.dart';
import 'package:chat_settings/features/connectivity/presentation/no_internet_screen.dart';
import 'package:chat_settings/features/settings/chat_settings/presentation/chat_setting_screen.dart';
import 'package:chat_settings/custom_widgets/add_settings_screen.dart';
import 'package:chat_settings/helper/integration_key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return 
    BlocListener<ConnectivityBloc,ConnectivityState>(
          listener: (context,state)async {
  
             
            if(state is ConnectivityOnline){
      
            if (Get.currentRoute == '/NoInternetScreen') {
                  Get.back();
                }
            }else{
              Get.to(()=>NoInternetScreen());
            
            }
          },
          child: 
    Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const AuthWidget(),
          Center(
            child: ElevatedButton(
              key: const Key(IntegrationKey.openSettings),
              onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ChatSettingsScreen()));
            }, child: const Text("Open Settings")),
          ),
          Center(
            child: ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AddSettingsScreen()));
                        }, child: const Text("Add Settings")),
          ),
         
        ],
      ),
    ));
  }
}