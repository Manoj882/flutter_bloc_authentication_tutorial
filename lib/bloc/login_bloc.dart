import 'dart:async';
import 'dart:math';
import 'package:rxdart/rxdart.dart';

class LoginBloc{
  final _loginEmail = BehaviorSubject<String>();
  final _loginPassword = BehaviorSubject<String>();

  //getter
  //listen stream
  Stream<String> get loginEmail => _loginEmail.stream;
  Stream<String> get loginPassword => _loginPassword.stream;


  //setter
  //add input in stream
  Function(String) get changeLoginEmail => _loginEmail.sink.add;
  Function(String) get changeLoginPassword => _loginPassword.sink.add;



  void disponse(){
    _loginEmail.close();
    _loginPassword.close();
  }

}