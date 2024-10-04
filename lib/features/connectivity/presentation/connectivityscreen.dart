// import 'package:chat_settings/features/connectivity/connectivity_bloc.dart';
// import 'package:chat_settings/features/connectivity/connectivity_state.dart';
// import 'package:chat_settings/main.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class ConnectivityScreen extends StatelessWidget {
//   const ConnectivityScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Internet"),
      
//       ),
//       body: BlocBuilder<ConnectivityBloc,ConnectivityState>(
//         bloc: getIt<ConnectivityBloc>(),
//         builder: (context, state) {
//         if(state is ConnectivityOffline){
//           return Text("offline");
//         }else{
//           return Text("online");
//         }
//       },),
//     );
//   }
// }