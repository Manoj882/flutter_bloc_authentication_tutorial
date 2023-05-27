import 'package:flutter/material.dart';
import 'package:flutter_bloc_authentication_tutorial/bloc/login_bloc.dart';
import 'package:flutter_bloc_authentication_tutorial/bloc/register_bloc.dart';
import 'package:flutter_bloc_authentication_tutorial/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginBloc>(create: (context) => LoginBloc(),),
        Provider<RegisterBloc>(create: (context) => RegisterBloc(),),
      ],
      child: MaterialApp(
        title: 'Complete Authentication',
        theme: ThemeData(
         
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const LoginScreen(),
    
      ),
    );
  }
}

