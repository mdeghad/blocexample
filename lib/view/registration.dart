import 'package:blocexample/bloc/event.dart';
import 'package:blocexample/bloc/state.dart';
import 'package:blocexample/model/registermodel.dart';
import 'package:blocexample/model/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Registration extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return RegistrationState();
  }

}


class RegistrationState extends State{


  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _pohneController = TextEditingController();
  @override
  void initState() {

    super.initState();
  }
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


  }


    }
  }
}