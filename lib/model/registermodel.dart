import 'dart:async';
import 'file:///C:/Users/user1/AndroidStudioProjects/blocexample/lib/bloc/bloc_counter.dart';
import 'package:blocexample/bloc/event.dart';



class RegisterModel{
  String name;
  String email;
  String password;
  int phone;

  final _NameStateController = StreamController<String>();
  StreamSink<String> get _name =>_NameStateController.sink;

  final _EmailStateController = StreamController<String>();
  StreamSink<String> get _email =>_EmailStateController.sink;

  final _PasswordStateController = StreamController<String>();
  StreamSink<String> get _password =>_PasswordStateController.sink;

  final _PhoneStateController = StreamController<int>();
  StreamSink<int> get _Phone =>_PhoneStateController.sink;


  Stream<String> get counter =>_NameStateController.stream;
  final _counterEventController = StreamController<Event>();

  Sink<Event> get counterEventSink =>_counterEventController.sink;

  Bloc_Counter(){
    _counterEventController.stream.listen((_mapEventtoState));
  }

  void _mapEventtoState(Event event){
    if(event is FormScreenEvent){
                if(email.isEmpty){

                }
    }

  }
  void dispose(){
    _NameStateController.close();
    _counterEventController.close();
  }
}