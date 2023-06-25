import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String? errorMessage = '';
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWidthEmailAndPassword() async{
    try{
      await Auth().signInWithEmailANdPassword(
        email:_controllerEmail.text,
        password:_controllerPassword.text,
      );
    } on FirebaseAuthException catch(e){
      setState((){
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async{
    try{
      await Auth().createUserWithEmailAndPssword(
        email:_controllerEmail.text,
        password:_controllerPassword.text,
      );
    } on FirebaseAuthException catch(e){
      setState((){
        errorMessage = e.message;
      });
    }
  }
  
  Widget _title(){
    return const Text("Firebase Auth");
  }

  Widget _entryField(
    String title,
    TextEditingController controller,){
      return TextField(
    decoration: InputDecoration(
      labelText: title,
      ),
      );
  }

  Widget _errorMessage(){
    return Text(errorMessage == '' ? '' : 'Hmm? $errorMessage');
  }
  
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}