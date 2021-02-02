import 'dart:async';

import 'package:blocexample/model/counter.dart';
import 'file:///C:/Users/user1/AndroidStudioProjects/blocexample/lib/bloc/bloc_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class IncrementBloc extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return IncrementBlocState();

  }

}


class IncrementBlocState extends State{
  final _bloc = Bloc_Counter();
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Bloc Demo"),
     ),
     body: Center(
       child: StreamBuilder(
         stream: _bloc.counter,
         initialData: 0,
         builder: (BuildContext context,AsyncSnapshot<int> snapshot){
           return Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text(
                   '${snapshot.data}',
                   style: TextStyle(fontSize: 30)
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                   children: [
           Container(
             margin: const EdgeInsets.all(10),
             child:
                RaisedButton(onPressed:(){
                 _bloc.counterEventSink.add(IncrementEvent());

           },

         child: Text("Increment"),
               ),
               ),
Container(
    child:
                 RaisedButton(onPressed:(){
                   _bloc.counterEventSink.add(DecrementEvent());
                 },
                   child: Text("Decrement"),
                 )
)
           ])
             ],
           );
         },
       ),
     ),

   );
  }
  @override
  void dispose() {
    super.dispose();
    //dispose all the controller
    _bloc.dispose();

  }
}