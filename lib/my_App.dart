import 'package:flutter/material.dart' ;
import 'package:triapp/pages/telaLogin.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialApp myVariable = MaterialApp(
     
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primarySwatch: Colors.yellow,
      ),
     home: const loginPagesteste(),
    );
    return myVariable;
  }
}

